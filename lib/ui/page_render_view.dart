import 'package:flutter/material.dart';
import 'package:spider_gui/widgets/spider_row.dart';
import 'package:spider_gui/widgets/spider_spacer.dart';

import '../ffi.dart';

class PageRenderView extends StatelessWidget {
  final DartUiPage? page;
  const PageRenderView({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    late DartUiPage renderPage;
    if (page == null) {
      return const Text('No page found');
    } else {
      renderPage = page!;
    }

    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: ElementWidget(page: renderPage, element: renderPage.root),
    ));
  }
}

class ElementWidget extends StatelessWidget {
  final DartUiPage page;
  final DartUiElement element;
  const ElementWidget({super.key, required this.page, required this.element});

  @override
  Widget build(BuildContext context) {
    switch (element.kind.name) {
      case 'None':
        return const SizedBox(width: 0, height: 0);
      case 'Spacer':
        return const SpiderSpacerWidget();
      case 'Columns':
        // var children = <(SpiderRowLayoutType, Widget)>[];
        var children = <Widget>[];
        for (DartUiElement child in element.children) {
          var layoutType = SpiderRowLayoutStrategy.static;
          if (child.kind.name == 'Text') {
            if (child.text.length < 50) {
              layoutType = SpiderRowLayoutStrategy.static;
            } else {
              layoutType = SpiderRowLayoutStrategy.flex;
            }
          }
          if (child.kind.name == 'Spacer') {
            layoutType = SpiderRowLayoutStrategy.spacer;
          }
          children.add(SpiderRowLayoutStrategyWidget(
            layoutStrategy: layoutType,
            child: ElementWidget(page: page, element: child),
          ));
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: SpiderRow(
            lastRowAlignRight: true,
            verticalAlignCenter: true,
            children: children,
          ),
        );
      case 'Rows':
        var children = <Widget>[];
        for (DartUiElement child in element.children) {
          children.add(ElementWidget(page: page, element: child));
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: children,
        );
      case 'Header':
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            element.text,
            style: const TextStyle(fontSize: 22),
          ),
        );
      case 'Text':
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(element.text),
        );
      case 'TextEntry':
        var textElementController = TextEditingController();

        return SizedBox(
            width: 150,
            child: TextField(
              controller: textElementController,
              decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                border: const OutlineInputBorder(),
                labelText: element.text,
              ),
              onSubmitted: (value) {
                api.write(
                    msg: ToProcessor.input(
                        pageId: page.id,
                        elementId: element.id!,
                        datasetIndices: element.datasetIndices,
                        input: DartUiInput.text(value)));
                textElementController.clear();
              },
            ));
      case 'Button':
        return TextButton(
            onPressed: () {
              api.write(
                  msg: ToProcessor.input(
                      pageId: page.id,
                      elementId: element.id!,
                      datasetIndices: element.datasetIndices,
                      input: const DartUiInput.click()));
            },
            child: Text(element.text));
      default:
        return const Text("<Unsupported element type>");
    }
  }
}
