import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

final themeControllerProvider =
    StateNotifierProvider<ThemeController, ThemeMode>((ref) {
  return ThemeController();
});

class ThemeController extends StateNotifier<ThemeMode> {

  /// Default theme is DARK
  ThemeController() : super(ThemeMode.dark);

  /// Toggles between dark and light mode
  void toggleTheme() {
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}
