import 'package:flutter/material.dart';
import 'package:ishowrunes/resources/theme/rune_color_scheme.dart';

class RuneColorSchemeProvider extends InheritedWidget {
  const RuneColorSchemeProvider({
    required this.color,
    required super.child,
  });

  final RuneColorScheme color;

  static RuneColorScheme of(BuildContext context) {
    final colorSchemeProvider = context.dependOnInheritedWidgetOfExactType<RuneColorSchemeProvider>();
    assert(colorSchemeProvider != null, 'The app is not yet ready to provide the NuColorScheme');
    return colorSchemeProvider!.color;
  }

  @override
  bool updateShouldNotify(RuneColorSchemeProvider oldProvider) {
    return color != oldProvider.color;
  }
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  RuneColorScheme get color => RuneColorSchemeProvider.of(this);
}
