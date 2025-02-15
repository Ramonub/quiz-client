import 'package:flutter/material.dart';
import 'package:quiz_app/pages/main_page.dart';
import 'package:quiz_app/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String? userName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.customTheme,
      home: MainPage(userName: userName),
    );
  }
}
