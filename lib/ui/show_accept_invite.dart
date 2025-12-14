import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:spider_gui/src/rust/api/simple.dart';
import 'package:spider_gui/src/rust/dart_spider/link.dart';

Future<void> acceptInviteOverlayBuilder(BuildContext context) {
  var controller = TextEditingController();

  CancelableOperation nfcPoller = CancelableOperation.fromFuture(() async {
    while (true) {
      var tag = await FlutterNfcKit.poll(
          timeout: const Duration(seconds: 10),
          iosMultipleTagMessage: "Multiple devices found?",
          iosAlertMessage: "Scan their device");

      if (tag.ndefAvailable != null) {
        /// decoded NDEF records (see [ndef.NDEFRecord] for details)
        /// `UriRecord: id=(empty) typeNameFormat=TypeNameFormat.nfcWellKnown type=U uri=https://github.com/nfcim/ndef`
        for (var record in await FlutterNfcKit.readNDEFRecords(cached: false)) {
          print("Read record from tag: $record");
          controller.text = record.toString();
        }
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
