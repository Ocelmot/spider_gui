import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:spider_gui/src/rust/api/simple.dart';
import 'package:spider_gui/src/rust/dart_spider/link.dart';

Future<void> acceptInviteOverlayBuilder(BuildContext context) {
  var controller = TextEditingController();

  CancelableOperation nfcPoller = CancelableOperation.fromFuture(() async {
    while (true) {
      try {
        var tag = await FlutterNfcKit.poll(
            timeout: const Duration(seconds: 10),
            iosMultipleTagMessage: "Multiple tags found!",
            iosAlertMessage: "Scan the NFC tag with invite");

        if (tag.ndefAvailable ?? false) {
          var records = await FlutterNfcKit.readNDEFRecords(cached: false);
          for (var record in records) {
            print("Read record from tag: $record");
            controller.text = record.toString();
          }
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
          title: const Text('Enter Invite Key:'),
          content: TextField(
            controller: controller,
          ),
          actions: [
            ElevatedButton(
              child: const Text("Accept invite"),
              onPressed: () {
                // send invite,
                write(msg: ToProcessor.acceptInvite(controller.text));

                nfcPoller.cancel();
                // return to previous view
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}
