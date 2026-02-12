import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ishowrunes/portfolio/runes_page.dart';
import 'package:ishowrunes/resources/dimensions.dart';
import 'package:ishowrunes/resources/strings.dart';
import 'package:ishowrunes/resources/theme/rune_color_scheme.dart';
import 'package:ishowrunes/resources/theme/themes.dart';
import 'package:ishowrunes/theme_switcher/theme_switcher_view_model.dart';
import 'package:ishowrunes/util/theme_util.dart';
import 'package:ishowrunes/widgets/color_scheme_provider.dart';
import 'package:konsumer_core/konsumer_core.dart';

class RunesApp extends StatelessWidget {
  const RunesApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: KonsumerCore(
        provider: themeSwitcherVMProvider,
        onReady: (vm) => vm.init(),
        builder: (context, pod) {
          final mode = pod.state.mode;
          final windowSize = resolveSize(MediaQuery.sizeOf(context).width);
          final theme = RuneTheme(windowSize);

          final (themeData, colorScheme) = switch (mode) {
            ThemeMode.system => _platformThemeData(context, theme),
            ThemeMode.light => (theme.light, theme.lightColorScheme),
            ThemeMode.dark => (theme.dark, theme.darkColorScheme),
          };

          return RuneColorSchemeProvider(
            color: colorScheme,
            child: MaterialApp(
              title: s_appName,
              theme: themeData,
              debugShowCheckedModeBanner: false,
              home: RunesPage(size: windowSize),
            ),
          );
        },
      ),
    );
  }

  (ThemeData, RuneColorScheme) _platformThemeData(BuildContext context, RuneTheme theme) {
    return context.isPlatformDarkMode
        ? (
            theme.dark,
            theme.darkColorScheme,
          )
        : (
            theme.light,
            theme.lightColorScheme,
          );
  }
}
