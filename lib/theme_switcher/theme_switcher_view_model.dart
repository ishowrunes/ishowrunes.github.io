import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeSwitcherVMProvider = NotifierProvider.autoDispose<ThemeSwitcherViewModel, ThemeSwitcherState>(ThemeSwitcherViewModel.new);


class ThemeSwitcherState {
  const ThemeSwitcherState({
    this.mode = ThemeMode.system,
  });

  final ThemeMode mode;

  ThemeSwitcherState copyWith({ThemeMode? mode}) {
    return ThemeSwitcherState(
      mode: mode ?? this.mode,
    );
  }
}

class ThemeSwitcherViewModel extends AutoDisposeNotifier<ThemeSwitcherState> {
  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final themeMode = prefs.getString('theme');

    if (themeMode != null) {
      final mode = switch (themeMode) {
        'ThemeMode.light' => ThemeMode.light,
        'ThemeMode.system' => ThemeMode.system,
        'ThemeMode.dark' => ThemeMode.dark,
        String() => ThemeMode.system,
      };

      state = state.copyWith(mode: mode);
    }
  }

  Future<void> updateMode(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme', mode.toString());

    state = state.copyWith(mode: mode);
  }

  @override
  ThemeSwitcherState build() {
    return const ThemeSwitcherState();
  }
}
