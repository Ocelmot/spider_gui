import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:spider_gui/src/rust/api/attach.dart';
import 'package:spider_gui/ui/hardware_setup/bluetooth_session.dart';

class WifiDetailsPage extends StatefulWidget {
  final NetworkDetails? networkDetails;
  final TextEditingController hardwareCodeController;
  final BluetoothSession session;
  const WifiDetailsPage({
    super.key,
    required this.session,
    required this.hardwareCodeController,
    this.networkDetails,
  });

  @override
  State<StatefulWidget> createState() => _WifiDetailsPageState();
}

class _WifiDetailsPageState extends State<WifiDetailsPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _hiddenNetwork = false;
  NetworkSecurityType _secType = NetworkSecurityType.open;
  late final StreamSubscription _sub;
  String? _hardwareCodeError;
  String? _networkNameError;
  String? _networkPasswordError;
  String? _errorMsg;

  setError(String? errorMsg) {
    setState(() {
      _errorMsg = errorMsg;
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.networkDetails != null) {
      var ssid =
          utf8.decode(widget.networkDetails!.ssid(), allowMalformed: true);
      nameController.text = ssid;

      _secType = widget.networkDetails!.secType();
    }

    _sub = widget.session.status.listen((change) {
      switch (change.kind()) {
        case StatusKind.ready:
        case StatusKind.attaching:
        case StatusKind.attached:
          // handled upstream
          break;

        case StatusKind.invalidCredentials:
          setState(() {
            _networkPasswordError = "Invalid password";
          });
          break;
        case StatusKind.retry:
          setError("Try again");
          break;
        case StatusKind.notFound:
          setState(() {
            _networkNameError = "Network not found";
          });
          break;
        case StatusKind.noAddress:
          setError("Failed to obtain IP address");
          break;

        case StatusKind.systemError:
          setError("Internal system error");
          break;

        case StatusKind.unknown:
          setError("Unknown error");
          break;
      }
    });
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);
    final labelStyle = WidgetStateTextStyle.resolveWith((states) {
      return states.contains(WidgetState.disabled)
          ? TextStyle(color: colorScheme.onSurface.withValues(alpha: 0.7))
          : TextStyle(color: colorScheme.onSurfaceVariant);
    });
    var textStyle = WidgetStateTextStyle.resolveWith((states) {
      final base = Theme.of(context).textTheme.bodyLarge!;
      return states.contains(WidgetState.disabled)
          ? base.copyWith(color: base.color?.withValues(alpha: 0.7))
          : base;
    });

    Widget body = Column(
      spacing: 8,
      children: [
        // Hardware Code
        TextField(
          controller: widget.hardwareCodeController,
          decoration: InputDecoration(
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            border: const OutlineInputBorder(),
            labelText: "Hardware Code",
            errorText: _hardwareCodeError,
          ),
          onChanged: (_) => setState(() {
            _hardwareCodeError = null;
          }),
        ),

        // Network Name
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  border: const OutlineInputBorder(),
                  labelText: "Network Name",
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: colorScheme.outline.withValues(alpha: 0.5)),
                  ),
                  labelStyle: labelStyle,
                  floatingLabelStyle: labelStyle,
                  errorText: _networkNameError,
                ),
                style: textStyle,
                enabled: widget.networkDetails == null,
                onChanged: (_) => setState(() {
                  _networkNameError = null;
                }),
              ),
            ),
            Visibility(
              visible: widget.networkDetails == null,
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Hidden"),
              ),
            ),
            Visibility(
              visible: widget.networkDetails == null,
              child: Checkbox(
                value: _hiddenNetwork,
                onChanged: (value) => setState(() {
                  _hiddenNetwork = value ?? false;
                }),
                materialTapTargetSize: MaterialTapTargetSize.padded,
                visualDensity: VisualDensity.compact,
              ),
            ),
          ],
        ),

        Theme(
          data: Theme.of(context).copyWith(
              iconButtonTheme: IconButtonThemeData(
                  style: IconButton.styleFrom(
            minimumSize: const Size(32, 32),
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ))),
          child: Row(
            children: [
              // Password Field
              Expanded(
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    border: const OutlineInputBorder(),
                    labelText: "Password",
                    errorText: _networkPasswordError,
                  ),
                  onChanged: (_) => setState(() {
                    _networkPasswordError = null;
                  }),
                ),
              ),
              const SizedBox(width: 15),

              // Network Security Type Dropdown
              DropdownMenu<NetworkSecurityType>(
                enabled: widget.networkDetails == null,
                label: const Text("Security type"),
                initialSelection: widget.networkDetails?.secType() ??
                    NetworkSecurityType.open,
                dropdownMenuEntries: NetworkSecurityType.values
                    .map((e) {
                      if (widget.networkDetails != null) {
                        return DropdownMenuEntry(
                            value: e, label: securityTypeName(secType: e));
                      } else {
                        if (isSupported(secType: e)) {
                          return DropdownMenuEntry(
                              value: e, label: securityTypeName(secType: e));
                        } else {
                          return null;
                        }
                      }
                    })
                    .whereType<DropdownMenuEntry<NetworkSecurityType>>()
                    .toList(),
                onSelected: (value) {
                  setState(() {
                    if (value != null) {
                      _networkPasswordError = null;
                      _secType = value;
                    }
                  });
                },
                inputDecorationTheme: InputDecorationTheme(
                  border: const OutlineInputBorder(),
                  labelStyle: labelStyle,
                  floatingLabelStyle: labelStyle,
                  isDense: true,
                ),
                textStyle: textStyle,
                requestFocusOnTap: false,
                trailingIcon: widget.networkDetails == null
                    ? null
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),

        // Error Message
        Visibility(
          visible: _errorMsg != null,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(_errorMsg ?? "",
                style: const TextStyle(color: Colors.red)),
          ),
        ),

        // Connect Button
        ElevatedButton(
            onPressed: () async {
              setError(null);
              late List<int> ssid;
              if (widget.networkDetails != null) {
                ssid = widget.networkDetails!.ssid();
              } else {
                ssid = utf8.encode(nameController.text);
              }

              if (!validateHardwareCode(
                  hardwareCode: widget.hardwareCodeController.text)) {
                setState(() {
                  _hardwareCodeError = "Invalid Hardware Code";
                });

                return;
              }

              AttachSecurityType? attachSecType;
              switch (_secType) {
                case NetworkSecurityType.open:
                  attachSecType = openSecurityType();
                  break;
                case NetworkSecurityType.wpaPsk:
                  attachSecType =
                      wpa2SecurityType(pass: passwordController.text);
                  break;
                case NetworkSecurityType.wpa3Sae:
                  attachSecType =
                      wpa3SecurityType(pass: passwordController.text);
                  break;
                default:
              }
              if (attachSecType == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Unsupported encryption")));
                return;
              }
              AttachDetails? details = AttachDetails.create(
                  ssid: ssid, secType: attachSecType, hidden: _hiddenNetwork);
              if (details == null) {
                setState(() {
                  _networkNameError = "Invalid network name";
                });
              } else {
                try {
                  await widget.session
                      .attachTo(details, widget.hardwareCodeController.text);
                } catch (e) {
                  if (mounted) {
                    setError("Failed to send network details: $e - Try again");
                  }
                }
              }
            },
            child: const Text("Connect")),
      ],
    );

    return Scaffold(
        appBar: AppBar(
          title: const Text('Enter network details'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: const [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: body,
        ));
  }
}
