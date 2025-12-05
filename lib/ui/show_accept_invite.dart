import 'package:flutter/material.dart';
import 'package:spider_gui/src/rust/api/simple.dart';
import 'package:spider_gui/src/rust/dart_spider/link.dart';

Future<void> acceptInviteOverlayBuilder(BuildContext context) {
  var controller = TextEditingController();

  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Enter Invite Key:'),
          content: TextField(controller: controller,),
          actions: [
            ElevatedButton(
              child: const Text("Ok"),
              onPressed: () {
                // send invite,
                write(msg: ToProcessor.acceptInvite(controller.text)); 

                // return to previous view
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}
