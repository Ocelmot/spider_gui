import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> inviteOverlayBuilder(BuildContext context, String invite) {
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
