import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get mode => _isDarkMode;

  void setMode(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }
}
