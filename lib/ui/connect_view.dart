import 'package:flutter/material.dart';

import '../ffi.dart';

class ConnectView extends StatelessWidget {
  const ConnectView({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter address of base',
      ),
      onSubmitted: (value) {
        api.write(msg: ToProcessor.connect(value));
      },
    );
  }
}
