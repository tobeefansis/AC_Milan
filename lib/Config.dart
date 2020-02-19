import 'package:flutter/material.dart';
class Config {
 static bool dark = false;
  static bool isDark(){
    return dark;
  }
  static ThemeData getTheme(){
  
  if (dark) {
    return ThemeData.dark();
  } else {
    return ThemeData.light();
  }
    
  }
}