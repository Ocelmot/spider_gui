import 'package:flutter/material.dart';
import 'package:spider_gui/src/rust/api/main.dart';
import 'package:spider_gui/src/rust/dart_spider/link.dart';
import 'package:spider_gui/src/rust/dart_spider/ui.dart';

class SpiderTextEntryWidget extends StatefulWidget {
  final DartUiPage page;
  final DartUiElement element;
  const SpiderTextEntryWidget(
      {super.key, required this.page, required this.element});

  @override
  State<SpiderTextEntryWidget> createState() => _SpiderTextEntryWidgetState();
}

class _SpiderTextEntryWidgetState extends State<SpiderTextEntryWidget> {
  TextEditingController tec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: tec,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        border: const OutlineInputBorder(),
        labelText: widget.element.text,
      ),
      onSubmitted: (value) {
        write(
            msg: ToProcessor.input(
                pageId: widget.page.id,
                elementId: widget.element.id!,
                datasetIndices: widget.element.datasetIndices,
                input: DartUiInput.text(value)));
        tec.clear();
      },
    );
  }
}
