import 'package:flutter/material.dart';
import 'package:spider_gui/src/rust/api/main.dart';
import 'package:spider_gui/src/rust/dart_spider/link.dart';
import 'package:spider_gui/ui/qr_scanner_screen.dart';

Future<void> acceptInviteOverlayBuilder(BuildContext context) {
  var controller = TextEditingController();

  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Enter Invite Key'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'Paste invite code here',
                ),
              ),
              const SizedBox(height: 16),
              const Text('or'),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                icon: const Icon(Icons.qr_code_scanner),
                label: const Text('Scan QR Code'),
                onPressed: () async {
                  final String? scannedCode = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const QRScannerScreen(),
                    ),
                  );

                  if (scannedCode != null && scannedCode.isNotEmpty) {
                    controller.text = scannedCode;
                  }
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text("Accept Invite"),
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  // send invite
                  write(msg: ToProcessor.acceptInvite(controller.text));

                  // return to previous view
                  Navigator.of(context).pop();
                }
              },
            )
          ],
        );
      });
}
