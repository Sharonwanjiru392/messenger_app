import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:messenger_app/config/PagePath.dart';
import 'package:messenger_app/config/themes.dart';
import 'package:messenger_app/pages/Welcome/WelcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shazchat',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      getPages: pagePath, // ✅ fixed route list
      home: const Welcomepage(),
    );
  }
}
