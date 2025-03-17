import 'package:flutter/material.dart';


class BravaColors {
  static const bravaPink = Color(0xFFFE6E93);
  static const lightPink = Color(0xFFFFDEEA);
  static const lightestPink = Color(0xFFFFFAFB);
  static const queenPink = Color(0xFFEF3A69);
  static const lightGrey = Color(0xFFF3F2F2);
  static const dirtyDuckGrey = Color(0xFFCDC1C1);
  static const stagePink = Color(0xFF390A17);
  static const marleyBlack = Color(0xFF131214);
}

const edgePadH = 32.0;  // Standard padding from the edge of the screen.
const edgePadTop = 64.0;  // Standard padding from the top of the screen.

final bravaAppTheme = ThemeData(
  // The theme of the application.
  // Most important attributes: colorScheme and textTheme.
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: BravaColors.bravaPink),
  // Define the default text styling for headlines, titles, bodies of
  // text, etc.
  fontFamily: 'Figtree',
  textTheme: TextTheme(
  //   displayLarge: TextStyle(),
  //   displayMedium: TextStyle(),
  //   displaySmall: TextStyle(),
  //   headlineLarge: TextStyle(),
  //   headlineMedium: TextStyle(),
  //   headlineSmall: TextStyle(),
  //   titleLarge: TextStyle(),
  //   titleMedium: TextStyle(),
  //   titleSmall: TextStyle(),
  //   bodyLarge: TextStyle(),
    bodyMedium: TextStyle(
      // Usage: Default body text.
      fontSize: 16,
    ),
  //   bodySmall: TextStyle(),
    labelLarge: TextStyle(
      // Usage: e.g. bolded text on buttons or interactive elements.
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      // Usage: Standard small subtitle font.
      fontWeight: FontWeight.w300,  // Not applying for some reason.
    ),
    labelSmall: TextStyle(
      // Usage: Smallest subtitle font.
      fontWeight: FontWeight.w300,  // Not applying for some reason.
    ),
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: Colors.white,
    indicatorColor: BravaColors.lightPink,
    indicatorShape: CircleBorder(),
    labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
  ),
  scaffoldBackgroundColor: Colors.white,
);