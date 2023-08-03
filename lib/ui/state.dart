import 'package:flutter/material.dart';
import '../ffi.dart';
import 'spinner_view.dart';
import 'pair_menu_view.dart';
import 'page_select_view.dart';
import 'page_render_view.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  final String configPath;

  const MyHomePage({super.key, required this.title, required this.configPath});

  @override
  // ignore: no_logic_in_create_state
  State<MyHomePage> createState() => _MyHomePageState(configPath);
}

class _MyHomePageState extends State<MyHomePage> {
  // Processor Connection
  late Stream<ToUi> stream;

  // Current State
  bool _initialized = false;

  bool _isPaired = false;
  List<(String, String)> pairs = List.empty(); // Potential Pairs

  bool _isConnected = false;
  String _connectingMessage = "";

  // Pages
  var pageOrder = <String>[];
  var pages = <String, DartUiPage>{};
  String? selectedPage;

  _MyHomePageState(String configPath) {
    stream = api.init(configPath: configPath);

    stream.listen((event) {
      print("Dart event: $event");
      event.map(
        unpaired: _onUnpaired,
        pairs: _onPairs,
        connecting: _onConnecting,
        connected: _onConnected,
        setPageOrder: _onSetPageOrder,
        setPage: _onSetPage,
      );
    });
  }

  void _onUnpaired(_) {
    setState(() {
      _initialized = true;
      _isPaired = false;
      _isConnected = false;
      pageOrder = [];
      pages = {};
    });
  }

  void _onPairs(ToUi_Pairs event) {
    setState(() {
      pairs = event.relations;
    });
  }

  void _onConnecting(ToUi_Connecting event) {
    setState(() {
      _initialized = true;
      _isPaired = true;
      _isConnected = false;
      _connectingMessage = event.msg;
    });
  }

  void _onConnected(_) {
    setState(() {
      _isPaired = true;
      _isConnected = true;
      _connectingMessage = "";
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
    var (body, leading) = getRenders();
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
                child: const Text("Unpair"),
                onTap: () {
                  api.write(msg: const ToProcessor.unpair());
                },
              )
            ],
          )
        ],
      ),
      body: body,
    );
  }

  (Widget, Widget?) getRenders() {
    //
    if (!_initialized) {
      return (
        const SpinnerView(
          title: 'Loading...',
        ),
        null
      );
    }

    // Show loading view
    if (!_isPaired) {
      return (PairMenuView(pairs: pairs), null);
    }

    // Show connection screen
    if (!_isConnected) {
      return (
        SpinnerView(
          title: "Connecting...",
          subtitle: _connectingMessage,
        ),
        null
      );
    }

    if (selectedPage == null) {
      return (
        PageSelectView(pageOrder, pages,
            onPressed: (pageId) => {
                  setState(() {
                    selectedPage = pageId;
                  })
                }),
        null
      );
    } else {
      return (
        PageRenderView(
          page: pages[selectedPage],
        ),
        BackButton(onPressed: () {
          setState(() {
            selectedPage = null;
          });
        })
      );
    }
  }
}
