import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:ndef/ndef.dart' as ndef;

Future<void> inviteOverlayBuilder(BuildContext context, String invite) async {
  CancelableOperation nfcPoller = CancelableOperation.fromFuture(() async {
    while (true) {
      try {
        var tag = await FlutterNfcKit.poll(
          timeout: const Duration(seconds: 10),
          iosMultipleTagMessage: "Multiple tags found!",
          iosAlertMessage: "Scan your writable NFC tag");

        if (tag.ndefWritable ?? false) {
          await FlutterNfcKit.writeNDEFRecords([ndef.TextRecord(text: invite)]);
          print("Successfully wrote invite to tag");
        } else {
          print("Tag is not writable - please use a writable NFC tag");
        }

        await FlutterNfcKit.finish(iosAlertMessage: "Done");
      } catch (e) {
        print("NFC error: $e");
        await FlutterNfcKit.finish(iosErrorMessage: "Error: $e");
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
