import 'package:flutter/material.dart';
import '../ffi.dart';
import 'connect_view.dart';
import 'page_select_view.dart';
import 'page_render_view.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Processor Connection
  late Stream<ToUi> stream;

  // handle connection to base
  bool _isConnected = false;

  // pages
  var pageOrder = <String>[];
  var pages = <String, DartUiPage>{};
  String? selectedPage;

  _MyHomePageState() {
    stream = api.init();

    stream.listen((event) {
      print("Dart event: $event");
      event.map(
        initialized: _onInitialization,
        connected: _onConnected,
        disconnected: _onDisconnected,
        setPageOrder: _onSetPageOrder,
        setPage: _onSetPage,
      );
    });
  }

  void _onInitialization(_) {
    // Test only
    // api.write(msg: const ToProcessor.connect("127.0.0.1:1930"));
  }

  void _onConnected(_) {
    setState(() {
      _isConnected = true;
    });
  }

  void _onDisconnected(_) {
    setState(() {
      _isConnected = false;
      pageOrder = [];
      pages = {};
    });
  }

  void _onSetPageOrder(ToUi_SetPageOrder event) {
    setState(() {
      pageOrder = event.pages;
    });
  }

  void _onSetPage(ToUi_SetPage event) {
    setState(() {
      pages[event.page.id] = event.page;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    Widget body;
    Widget? leading;
    if (!_isConnected) {
      leading = null;
      body = const ConnectView();
    } else {
      if (selectedPage == null) {
        leading = null;
        body = PageSelectView(pageOrder, pages,
            onPressed: (pageId) => {
                  setState(() {
                    selectedPage = pageId;
                  })
                });
      } else {
        leading = BackButton(onPressed: () {
          setState(() {
            selectedPage = null;
          });
        });
        body = PageRenderView(
          page: pages[selectedPage],
        );
      }
    }

    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          leading: leading,
          actions: [
            PopupMenuButton(
              icon: const Icon(Icons.settings),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  child: const Text("Disconnect"),
                  onTap: () {
                    api.write(msg: const ToProcessor.disconnect());
                  },
                )
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
            // shrinkWrap: true,
            child: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.min,
          children: [body],
        )));
  }
}
