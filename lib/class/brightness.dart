import 'package:flutter/material.dart';

class ThemeToglle extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void tolight() {
    _isDarkMode=false;
    notifyListeners();
  }
  void toblack() {
    _isDarkMode=true;
    notifyListeners();
  }
}
