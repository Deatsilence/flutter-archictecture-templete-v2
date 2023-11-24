import 'package:architecture_templete_v2/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_templete_v2/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';

/// Custom dark theme for project design
final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.darkColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData => const FloatingActionButtonThemeData();
}

// TODO: this can use at while the project was putting to release
// final class CustomDarkTheme implements CustomTheme {
//   CustomDarkTheme() {
//     themeData = ThemeData(
//       useMaterial3: true,
//       colorScheme: CustomColorScheme.darkColorScheme,
//       floatingActionButtonTheme: floatingActionButtonThemeData,
//     );
//   }

//   @override
//   late final ThemeData themeData;

//   @override
//   FloatingActionButtonThemeData get floatingActionButtonThemeData => const FloatingActionButtonThemeData();

// }

// TODO: this can use at begin of the project
// final class CustomDarkTheme implements CustomTheme {
//   @override
//   final ThemeData themeData = ThemeData(
//     useMaterial3: true,
//     colorScheme: CustomColorScheme.darkColorScheme,
//     floatingActionButtonTheme: floatingActionButtonThemeData,
//   );

//   @override
//   FloatingActionButtonThemeData get floatingActionButtonThemeData => const FloatingActionButtonThemeData();
// }
