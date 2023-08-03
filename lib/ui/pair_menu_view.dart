import 'package:flutter/material.dart';

import '../ffi.dart';

class PairMenuView extends StatelessWidget {
  final List<(String, String)> pairs;
  const PairMenuView({super.key, required this.pairs});

  @override
  Widget build(BuildContext context) {
    var children = [
      TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter key of base to pair',
        ),
        onSubmitted: (value) {
          api.write(msg: ToProcessor.pair(value));
        },
      ),
      const Row(
        children: [
          Text("Or choose a local base to pair with:  "),
          Expanded(child: Divider())
        ],
      )
    ];
    for (var (name, key) in pairs) {
      children.add(Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal)),
              Text(
                key,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: true,
                style:
                    const TextStyle(color: Color.fromARGB(255, 124, 124, 124)),
              ),
            ],
          )),
          TextButton(
              onPressed: () {
                api.write(msg: ToProcessor.pair(key));
              },
              child: const Text("Pair"))
        ],
      ));
    }

    if (pairs.isEmpty) {
      children.add(const Flex(
        direction: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Center(child: CircularProgressIndicator.adaptive()),
          )
        ],
      ));
    }

    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            )));
  }
}
