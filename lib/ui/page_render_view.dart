import 'package:flutter/material.dart';

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

    // renderPage.root.kind;

    return ElementWidget(page: renderPage, element: renderPage.root);
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
        return const SizedBox.shrink();
      case 'Columns':
        var children = <Widget>[];
        for (DartUiElement child in element.children) {
          children.add(ElementWidget(page: page, element: child));
        }
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: children,
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
      case 'Text':
        return Flexible(fit: FlexFit.loose, child: Text(element.text));
      case 'TextEntry':
        return Flexible(
            fit: FlexFit.loose,
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: element.text,
              ),
              onSubmitted: (value) {
                api.write(
                    msg: ToProcessor.input(
                        pageId: page.id,
                        elementId: element.id!,
                        datasetIndices: element.datasetIndices,
                        input: DartUiInput.text(value)));
              },
            ));
      case 'Button':
        return Flexible(
            fit: FlexFit.loose,
            child: TextButton(
                onPressed: () {
                  api.write(
                      msg: ToProcessor.input(
                          pageId: page.id,
                          elementId: element.id!,
                          datasetIndices: element.datasetIndices,
                          input: const DartUiInput.click()));
                },
                child: Text(element.text)));
      default:
        return const Text("<Unsupported element type>");
    }
  }
}
