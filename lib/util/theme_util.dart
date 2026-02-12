import 'package:flutter/material.dart';

extension ThemeUtil on BuildContext {
  bool get isPlatformDarkMode {
    return MediaQuery.platformBrightnessOf(this) == Brightness.dark;
  }

  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }
}
