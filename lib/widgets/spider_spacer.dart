import 'package:flutter/material.dart';

class SpiderSpacerWidget extends StatelessWidget {
  const SpiderSpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return SizedBox.shrink();
    return const Flexible(
        flex: 1, fit: FlexFit.tight, child: SizedBox.shrink());
  }
}
