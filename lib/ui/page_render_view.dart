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
          var layoutType = SpiderRowLayoutType.static;
          if (child.kind.name == 'Text') {
            layoutType = SpiderRowLayoutType.flex;
          }
          if (child.kind.name == 'Spacer') {
            layoutType = SpiderRowLayoutType.spacer;
          }
          children.add(ElementWidget(page: page, element: child));
          // var childWidget = ElementWidget(page: page, element: child);
          // children.add((layoutType, childWidget));
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        );
      // return Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 4),
      //   child: SpiderRowWidget(
      //     children: children,
      //   ),
      // );
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
        return Flexible(flex: 0, fit: FlexFit.loose, child: Text(element.text));
      // return Text(element.text);
      case 'TextEntry':
        var textElementController = TextEditingController();

        return Container(
            width: 150,
            child: TextField(
              controller: textElementController,
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
                textElementController.clear();
              },
            ));
      case 'Button':
        // return TextButton(
        //     onPressed: () {
        //       api.write(
        //           msg: ToProcessor.input(
        //               pageId: page.id,
        //               elementId: element.id!,
        //               datasetIndices: element.datasetIndices,
        //               input: const DartUiInput.click()));
        //     },
        //     child: Text(element.text));
        return Flexible(
            flex: 0,
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
