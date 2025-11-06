import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> fatalErrorOverlayBuilder(BuildContext context, String errorMsg) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text("Encountered the following error:\n$errorMsg"),
          actions: [
            ElevatedButton(
              child: const Text("Copy"),
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: errorMsg));
              },
            ),
            ElevatedButton(
              child: const Text("Close"),
              onPressed: () {
                exit(1);
              },
            ),
          ],
        );
      });
}

Future<void> errorOverlayBuilder(BuildContext context, String errorMsg) {
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text("Encountered the following error:\n$errorMsg"),
          actions: [
            ElevatedButton(
              child: const Text("Copy"),
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: errorMsg));
              },
            ),
            ElevatedButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
