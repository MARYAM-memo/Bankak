import 'package:bankak_app/helper/scroll_behavior.dart';
import 'package:bankak_app/shared/resources/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modules/login.dart';

void main() {
  //to prevent the orientaton in my app, to avoid the errors
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) =>
          ScrollConfiguration(behavior: AppScrollBehavior(), child: child!),
      title: 'Bankak App',
      theme: getThemes(),
      home: const LoginPage(),
    );
  }
}
