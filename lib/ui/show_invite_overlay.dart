import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:ndef/ndef.dart' as ndef;

Future<void> inviteOverlayBuilder(BuildContext context, String invite) async {
  CancelableOperation nfcPoller = CancelableOperation.fromFuture(() async {
    while (true) {
      var tag = await FlutterNfcKit.poll(
        timeout: const Duration(seconds: 10),
        iosMultipleTagMessage: "Multiple tags found!",
        iosAlertMessage: "Scan your tag");

      if (tag.ndefWritable != null) {
        // decoded NDEF records
        await FlutterNfcKit.writeNDEFRecords([ndef.TextRecord(text: invite)]);
      }
    }
  } ());

  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Invite:'),
          content: Text(invite),
          actions: [
            ElevatedButton(
              child: const Text("Close"),
              onPressed: () {
                nfcPoller.cancel();
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text("Copy All"),
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: invite));
              },
            )
          ],
        );
      });
}
