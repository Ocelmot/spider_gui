import 'package:flutter/material.dart';
import 'package:spider_gui/src/rust/frb_generated.dart';
import 'ui/state.dart';
import 'package:path_provider/path_provider.dart';
import 'color_schemes.g.dart';

void main() async {
  await RustLib.init();
  WidgetsFlutterBinding.ensureInitialized();
  var dir = await getApplicationSupportDirectory();
  var configPath = dir.path;
  runApp(MyApp(configPath: configPath));
}

class MyApp extends StatelessWidget {
  final String configPath;
  const MyApp({super.key, required this.configPath});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spider',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: 'Spider',
        configPath: configPath,
      ),
    );
  }
}
