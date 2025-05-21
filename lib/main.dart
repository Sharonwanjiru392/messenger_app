import 'package:flutter/material.dart';
import 'package:messenger_app/config/themes.dart';
// ignore: unused_import
import 'package:messenger_app/pages/SplacePage/SplacePage.dart';
import 'package:messenger_app/pages/Welcome/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: FToastBuilder(),
      title: 'shazchat',
      theme: lightTheme,
      // getPages: pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const Welcomepage(),
      // home: DemoPage2(),
    );
  }
}

