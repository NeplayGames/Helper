import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './page/home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(Helper());
}

class Helper extends StatelessWidget {
  static final String title = 'Helper';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage(),
      );
}
