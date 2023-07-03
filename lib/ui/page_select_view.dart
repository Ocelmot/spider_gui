import 'package:flutter/material.dart';

import '../ffi.dart';

class PageSelectView extends StatelessWidget {
  final List<String> pageOrder;
  final Map<String, DartUiPage> pages;
  final void Function(String) onPressed;

  const PageSelectView(this.pageOrder, this.pages,
      {super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var pageId in pageOrder) {
      var w = TextButton(
          onPressed: () {
            onPressed(pageId);
          },
          child: Text(pages[pageId]?.name ?? '<No Value>'));
      children.add(w);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
