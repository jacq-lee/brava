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

class ScreenPadding {
  static const edgePadH = 28.0;  // Standard padding from the edge of the screen.
  static const edgePadTop = 64.0;  // Standard padding from the top of the screen.
}


final bravaAppTheme = ThemeData(
  // The theme of the application.
  // Most important attributes: colorScheme and textTheme.
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: BravaColors.bravaPink),
  // Define the default text styling for headlines, titles, bodies of
  // text, etc.
  fontFamily: 'Figtree',
  textTheme: TextTheme(
  //   displayLarge: TextStyle(), // fontSize 57
  //   displayMedium: TextStyle(), // fontSize 45
  //   displaySmall: TextStyle(), // fontSize 36
  //   headlineLarge: TextStyle(), // fontSize 32
  //   headlineMedium: TextStyle(), // fontSize 28
  //   headlineSmall: TextStyle(), // fontSize 24
  //   titleLarge: TextStyle(), // fontSize 22
  //   titleMedium: TextStyle(), // fontSize 16
  //   titleSmall: TextStyle(), // fontSize 14
  //   bodyLarge: TextStyle(), // fontSize 16
    bodyMedium: TextStyle(
      // Usage: Default body text.
      fontSize: 16,
    ),
  //   bodySmall: TextStyle(), // fontSize 12
    labelLarge: TextStyle( // fontSize 14
      // Usage: e.g. bolded text on buttons or interactive elements.
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle( // fontSize 12
      // Usage: Standard small subtitle font.
      fontWeight: FontWeight.w300,  // Not applying for some reason.
    ),
    labelSmall: TextStyle( // fontSize 11
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
