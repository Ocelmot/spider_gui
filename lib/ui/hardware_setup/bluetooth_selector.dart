import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:spider_gui/src/rust/api/attach.dart';
import 'package:spider_gui/ui/hardware_setup/wifi_selector.dart';
import 'package:spider_gui/widgets/signal_strength.dart';

final _uuids = bleUuids();

class BluetoothSelectorPage extends StatefulWidget {
  const BluetoothSelectorPage({super.key});

  @override
  State<BluetoothSelectorPage> createState() => _BluetoothSelectorPageState();
}

class _BluetoothSelectorPageState extends State<BluetoothSelectorPage>
    with SingleTickerProviderStateMixin {
  List<ScanResult> _results = [];
  StreamSubscription<List<ScanResult>>? _scanSubscription;
  String? _error;

  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat(reverse: true)
        ..addListener(
          () => setState(() {}),
        );
  late final _fade =
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic);

  @override
  void initState() {
    super.initState();
    _startScan();
  }

  Future<void> _startScan() async {
    _scanSubscription = FlutterBluePlus.onScanResults.listen((results) {
      if (mounted) {
        setState(() => _results = results
            .where((r) =>
                r.advertisementData.serviceUuids.contains(Guid(_uuids.base)))
            .toList());
      }
    }, onError: (e) => setError('Error scanning for devices: $e'));

    try {
      await FlutterBluePlus.startScan(
        withServices: [Guid(_uuids.base)],
        continuousUpdates: true,
        removeIfGone: const Duration(seconds: 15),
      );
    } catch (e) {
      switch (FlutterBluePlus.adapterStateNow) {
        case BluetoothAdapterState.unknown:
          setError("Unknown error: $e");
          break;
        case BluetoothAdapterState.unavailable:
          setError("No Bluetooth device found");
          break;
        case BluetoothAdapterState.unauthorized:
          setError("No permissions to access Bluetooth device");
          break;
        case BluetoothAdapterState.off:
        case BluetoothAdapterState.turningOff:
          setError("Enable Bluetooth to connect");
          break;
        case BluetoothAdapterState.on:
        case BluetoothAdapterState.turningOn:
          setError("Failed to scan: $e");
          break;
      }
    }
  }

  Future<void> _stopScan() async {
    await _scanSubscription?.cancel();
    await FlutterBluePlus.stopScan();
  }

  setError(String? error) {
    if (mounted) {
      setState(() {
        _error = error;
      });
    }
  }

  @override
  void dispose() {
    _stopScan();
    _fade.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select base to configure'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () async {
                setError(null);
                _results = [];
                await _stopScan();
                await _startScan();
              }),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemCount: _results.length,
            itemBuilder: (context, i) {
              final r = _results[i];
              return ListTile(
                title: Row(
                  children: [
                    Text(r.device.platformName.isNotEmpty
                        ? r.device.platformName
                        : '(unnamed)'),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0)),
                    signalStrength(r.rssi),
                  ],
                ),
                onTap: () async {
                  await _stopScan();
                  await Future.delayed(Duration.zero);
                  bool? success;
                  if (context.mounted) {
                    success = await Navigator.of(context)
                        .push(MaterialPageRoute<bool>(
                      builder: (context) => WifiSelectorPage(
                        device: r.device,
                      ),
                    ));
                  }
                  if (context.mounted && (success ?? false)) {
                    Navigator.of(context).pop();
                    return;
                  }
                  await _startScan();
                },
              );
            },
          ),
          SliverToBoxAdapter(
              child: Visibility(
            visible: _error == null,
            replacement: Center(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:
                  Text(_error ?? "", style: const TextStyle(color: Colors.red)),
            )),
            child: StreamBuilder<bool>(
                stream: FlutterBluePlus.isScanning,
                initialData: FlutterBluePlus.isScanningNow,
                builder: (context, snapshot) {
                  if (snapshot.data ?? true) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 24, horizontal: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Scanning...'),
                            const SizedBox(height: 10),
                            LinearProgressIndicator(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              backgroundColor: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                              value: _fade.value,
                            ),
                          ],
                        ));
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
          )),
        ],
      ),
    );
  }
}
