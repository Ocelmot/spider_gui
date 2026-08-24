import 'package:flutter/material.dart';
import 'package:spider_gui/src/rust/api/main.dart';
import 'package:spider_gui/src/rust/dart_spider/link.dart';

class PairMenuView extends StatelessWidget {
  // Map from base64 of the id to the base's name
  final Map<String, String> pairs;
  const PairMenuView({super.key, required this.pairs});

  @override
  Widget build(BuildContext context) {
    // Add header items
    var children = [
      TextField(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter key or IP of base to pair',
        ),
        onSubmitted: (value) {
          write(msg: ToProcessor.pair(value));
        },
      ),
      const Row(
        children: [
          Text("Or choose a local base to pair with:  "),
          Expanded(child: Divider())
        ],
      )
    ];

    // Add pairs
    var pairList = List.empty(growable: true);
    for (var entry in pairs.entries) {
      var key = entry.key;
      var name = entry.value;

      pairList.add((key, name));
    }
    pairList.sort(
      (a, b) {
        return a.$2.compareTo(b.$2);
      },
    );

    for (var (key, name) in pairList) {
      children.add(Row(
        key: Key(key),
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
          ElevatedButton(
              onPressed: () {
                write(msg: ToProcessor.pair(key));
              },
              child: const Text("Pair"))
        ],
      ));
    }

    // Add spinner if no item are in the list
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
