import 'package:flutter/material.dart';
import 'package:ishowrunes/util/theme_util.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
    required this.onThemeChange,
  });

  final ValueChanged<ThemeMode> onThemeChange;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    final color = context.color;
    return IconButton(
      onPressed: () => onThemeChange(isDarkMode ? ThemeMode.light : ThemeMode.dark),
      icon: Icon(
        isDarkMode ? Icons.light_mode : Icons.dark_mode_outlined,
      ),
      style: IconButton.styleFrom(
        backgroundColor: color.inverseSurface.withValues(alpha: 0.1),
        shape: const CircleBorder(),
      ),
    );
  }
}
