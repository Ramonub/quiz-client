import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get customTheme => ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
    tabBarTheme: TabBarThemeData(
      indicatorColor: Colors.black,
      labelColor: Colors.black,
      overlayColor: WidgetStateProperty.resolveWith((states) {
        return Colors.grey.withValues(alpha: .25);
      }),
    ),
    inputDecorationTheme: InputDecorationTheme(border: InputBorder.none),
  );
}
