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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(subtitle),
        ),
        const CircularProgressIndicator.adaptive(),
      ],
    ));
  }
}
