import 'package:architecture_templete_v2/product/init/theme/custom_color_scheme.dart';
import 'package:architecture_templete_v2/product/init/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Custom light theme for project design
final class CustomLightTheme implements CustomTheme {
  //TODO: change to initialize ThemeData instead of computed
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.aBeeZee().fontFamily,
        colorScheme: CustomColorScheme.lightColorScheme,
        textTheme: const TextTheme(),
        floatingActionButtonTheme: floatingActionButtonThemeData,
      );

  // TODO: or that use can
  // ThemeData get _themeData => ThemeData(
  //       useMaterial3: true,
  //       colorScheme: CustomColorScheme.lightColorScheme,
  //       textTheme: const TextTheme(),
  //       floatingActionButtonTheme: floatingActionButtonThemeData,
  //     );
  // @override
  // ThemeData get themeData => _themeData.copyWith(
  //       textTheme: GoogleFonts.robotoTextTheme(
  //         _themeData.textTheme,
  //       ),
  //     );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData => const FloatingActionButtonThemeData();
}
