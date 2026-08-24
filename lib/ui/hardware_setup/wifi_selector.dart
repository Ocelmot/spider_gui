import 'dart:collection';
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:spider_gui/src/rust/api/attach.dart';
import 'package:spider_gui/ui/hardware_setup/wifi_details_page.dart';
import 'package:spider_gui/ui/hardware_setup/bluetooth_session.dart';
import 'package:spider_gui/widgets/signal_strength.dart';

class WifiSelectorPage extends StatefulWidget {
  final BluetoothDevice device;
  const WifiSelectorPage({super.key, required this.device});

  @override
  State<StatefulWidget> createState() => _WifiSelectorPageState();
}

class _WifiSelectorPageState extends State<WifiSelectorPage> {
  late final BluetoothSession _session;
  final _networkDetails = LinkedHashMap<Uint8List, NetworkDetails>(
      equals: const ListEquality<int>().equals,
      hashCode: const ListEquality<int>().hash);
  final _hardwareCode = TextEditingController();
  bool _loading = true;
  ModalRoute<bool>? _route;
  bool _closing = false;

  @override
  void initState() {
    super.initState();

    _session = BluetoothSession(widget.device);

    _session.status.listen((s) {
      if (mounted) {
        switch (s.kind()) {
          case StatusKind.attached:
            _close(true, "Attached Successfully");
            break;
          default:
        }
      }
    }, onError: (e) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(e.toString())));
      }
    });

    _session.ssids.listen((s) {
      if (mounted && s.ssid().isNotEmpty) {
        setState(() {
          _networkDetails[s.ssid()] = s;
        });
      }
    });

    _session.connected.listen((connected) {
      if (mounted && !connected) {
        _close(false, "Bluetooth disconnected, reconnect");
      }
    });

    _open();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _route = ModalRoute.of<bool>(context);
  }

  Future<void> _open() async {
    try {
      await _session.open();
    } catch (e) {
      if (mounted) {
        _close(false, "Failed to connect: $e");
      }
    } finally {
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  void _close(bool success, String message) {
    if (_closing) return;
    _closing = true;
    Navigator.of(context).popUntil((r) => r == _route);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
    Navigator.of(context).pop(success);
  }

  @override
  Widget build(BuildContext context) {
    final networks = _networkDetails.values.toList();
    networks.sort((a, b) {
      if (a.strength() != b.strength()) {
        return b.strength().compareTo(a.strength());
      } else {
        return utf8
            .decode(a.ssid(), allowMalformed: true)
            .compareTo(utf8.decode(b.ssid(), allowMalformed: true));
      }
    });
    Widget body;
    if (_loading) {
      body = Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Connecting...'),
            const SizedBox(height: 10),
            SizedBox(
              width: 64,
              height: 64,
              child: CircularProgressIndicator(
                strokeWidth: 5,
                color: Theme.of(context).colorScheme.primaryContainer,
                backgroundColor:
                    Theme.of(context).colorScheme.secondaryContainer,
              ),
            ),
          ],
        ),
      );
    } else {
      body = Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _hardwareCode,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Hardware Code"),
                ),
              ),
              const SizedBox(width: 15),
              ElevatedButton(
                  child: const Text("Network Details"),
                  onPressed: () async {
                    final navigator = Navigator.of(context);
                    await Future.delayed(Duration.zero);

                    await navigator.push(MaterialPageRoute(
                      builder: (context) => WifiDetailsPage(
                        session: _session,
                        hardwareCodeController: _hardwareCode,
                      ),
                    ));
                  })
            ],
          ),
          Expanded(
              child: CustomScrollView(slivers: [
            SliverList.builder(
              itemCount: networks.length,
              itemBuilder: (context, i) {
                final networkDetails = networks[i];
                return ListTile(
                  title: Row(
                    children: [
                      Text(utf8.decode(networkDetails.ssid(),
                          allowMalformed: true)),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0)),
                      signalStrength(networkDetails.strength()),
                    ],
                  ),
                  onTap: () async {
                    final navigator = Navigator.of(context);
                    await Future.delayed(Duration.zero);

                    await navigator.push(MaterialPageRoute(
                      builder: (context) => WifiDetailsPage(
                        networkDetails: networkDetails,
                        session: _session,
                        hardwareCodeController: _hardwareCode,
                      ),
                    ));
                  },
                );
              },
            )
          ])),
        ],
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Select network to attach'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: const [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: body,
        ));
  }

  @override
  void dispose() {
    _session.close().catchError((Object e) => debugPrint('session close: $e'));
    _hardwareCode.dispose();
    super.dispose();
  }
}
