import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


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
  //   displayLarge: GoogleFonts.figtree(),
  //   displayMedium: GoogleFonts.figtree(),
  //   displaySmall: GoogleFonts.figtree(),
  //   headlineLarge: GoogleFonts.figtree(),
  //   headlineMedium: GoogleFonts.figtree(),
  //   headlineSmall: GoogleFonts.figtree(),
  //   titleLarge: GoogleFonts.figtree(),
  //   titleMedium: GoogleFonts.figtree(),
  //   titleSmall: GoogleFonts.figtree(),
  //   bodyLarge: GoogleFonts.figtree(),
    bodyMedium: GoogleFonts.figtree(
      // Usage: Default body text.
      fontSize: 16,
    ),
  //   bodySmall: GoogleFonts.figtree(),
    labelLarge: GoogleFonts.figtree(
      // Usage: e.g. bolded text on buttons or interactive elements.
      fontWeight: FontWeight.w700,
    ),
    labelMedium: GoogleFonts.figtree(
      // Usage: Standard small subtitle font.
      fontWeight: FontWeight.w300,  // Not applying for some reason.
    ),
    labelSmall: GoogleFonts.figtree(
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