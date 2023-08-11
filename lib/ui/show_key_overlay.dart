import 'package:flutter/material.dart';

Future<void> keyOverlayBuilder(BuildContext context, String key) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Peripheral Key:'),
          content: Text(key),
          actions: [
            ElevatedButton(
              child: const Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}
