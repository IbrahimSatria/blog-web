import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  // bool get isDarkMode => themeMode == ThemeMode.dark;

  // void toggleTheme(bool isOn) {
  //   themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
  //   notifyListeners();
  // }
}

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark(),
      primaryColor: Colors.black,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      ));

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0.0,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
