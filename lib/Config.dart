import 'package:flutter/material.dart';

class Config {
  static bool dark;
  static bool isDark() {
    return dark;
  }

  static ThemeMode getTheme() {
    return ThemeMode.system;
  }
}
