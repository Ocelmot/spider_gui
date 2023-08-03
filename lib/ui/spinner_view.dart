import 'package:flutter/material.dart';

class SpinnerView extends StatelessWidget {
  final String title;
  final String subtitle;

  const SpinnerView({super.key, required this.title, this.subtitle = ""});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title),
        const CircularProgressIndicator.adaptive(),
      ],
    ));
  }
}
