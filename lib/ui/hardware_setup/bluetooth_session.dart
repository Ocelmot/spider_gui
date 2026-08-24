import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:spider_gui/src/rust/api/attach.dart';

final _uuids = bleUuids();

class BluetoothSession {
  final BluetoothDevice device;
  BluetoothSession(this.device);

  late BluetoothCharacteristic _status;
  late BluetoothCharacteristic _networks;
  late BluetoothCharacteristic _nonce;
  late BluetoothCharacteristic _attach;

  StreamSubscription<BluetoothConnectionState>? _connSub;
  bool _wasConnected = false;

  final _statusCtl = StreamController<AttachStatus>.broadcast();
  final _ssidCtl = StreamController<NetworkDetails>.broadcast();
  final _connectedCtl = StreamController<bool>.broadcast();

  Stream<AttachStatus> get status => _statusCtl.stream;
  Stream<NetworkDetails> get ssids => _ssidCtl.stream;
  Stream<bool> get connected => _connectedCtl.stream;

  Future<void> open() async {
    await device.connect(license: License.nonprofit, mtu: 1024);
    await _setup();
    _wasConnected = true;

    _connSub = device.connectionState.listen((state) {
      final isConnected = state == BluetoothConnectionState.connected;
      if (isConnected && !_wasConnected) {
        _setup()
            .catchError((Object e, StackTrace s) => _statusCtl.addError(e, s));
      }
      _wasConnected = isConnected;
      if (!_connectedCtl.isClosed) {
        _connectedCtl.add(isConnected);
      }
    });
  }

  Future<void> _setup() async {
    final services = await device.discoverServices();
    final svc = services.firstWhere(
      (s) => s.uuid == Guid(_uuids.base),
      orElse: () =>
          throw StateError("Target device does not provide attacher service"),
    );

    BluetoothCharacteristic find(Guid id) => svc.characteristics.firstWhere(
          (c) => c.uuid == id,
          orElse: () => throw StateError("Base missing characteristic $id"),
        );

    _status = find(Guid(_uuids.status));
    _networks = find(Guid(_uuids.networks));
    _nonce = find(Guid(_uuids.nonce));
    _attach = find(Guid(_uuids.attach));

    final statusSubscription = _status.onValueReceived.listen((v) {
      var status = AttachStatus.fromBytes(bytes: v);
      if (status != null && !_statusCtl.isClosed) {
        _statusCtl.add(status);
      }
    });
    device.cancelWhenDisconnected(statusSubscription);
    await _status.setNotifyValue(true);

    final networksSubscription = _networks.onValueReceived.listen((v) {
      var details = NetworkDetails.fromBytes(bytes: v);
      if (details != null && !_ssidCtl.isClosed) {
        _ssidCtl.add(details);
      }
    });
    device.cancelWhenDisconnected(networksSubscription);
    await _networks.setNotifyValue(true);

    var status = AttachStatus.fromBytes(bytes: await _status.read());
    if (status != null && !_statusCtl.isClosed) {
      _statusCtl.add(status);
    }
  }

  Future<void> attachTo(AttachDetails details, String hardwareCode) async {
    if (!device.isConnected) throw StateError("Not connected");

    final result = parseNonce(data: Uint8List.fromList(await _nonce.read()));
    if (result == null) throw StateError("Invalid salt/nonce");
    var (salt, nonce) = result;

    final key = generateKey(hardwareCode: hardwareCode, salt: salt);
    if (key == null) throw StateError("Invalid Hardware Code");

    await _attach.write(details.pack(key: key, nonce: nonce));
  }

  Future<void> close() async {
    await _connSub?.cancel();
    _connSub = null;
    await _statusCtl.close();
    await _ssidCtl.close();
    await _connectedCtl.close();
    await device.disconnect();
  }
}
