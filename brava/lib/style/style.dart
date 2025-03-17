import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const bravaPink = Color(0xFFFE6E93);
const lightPink = Color(0xFFFFDEEA);
const lightestPink = Color(0xFFFFFAFB);
const queenPink = Color(0xFFEF3A69);
const lightGrey = Color(0xFFF3F2F2);
const dirtyDuckGrey = Color(0xFFCDC1C1);
const stagePink = Color(0xFF390A17);
const marleyBlack = Color(0xFF131214);

const edgePadH = 32.0;  // Standard padding from the edge of the screen.
const edgePadTop = 64.0;  // Standard padding from the top of the screen.

final bravaAppTheme = ThemeData(
  // The theme of the application.
  // Most important attributes: colorScheme and textTheme.
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: bravaPink),
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
      fontSize: 16,
    ),
  //   bodySmall: GoogleFonts.figtree(),
  //   labelLarge: GoogleFonts.figtree(),
  //   labelMedium: GoogleFonts.figtree(),
  //   labelSmall: GoogleFonts.figtree(),
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: Colors.white,
    indicatorColor: lightPink,
    indicatorShape: CircleBorder(),
    labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
  ),
  scaffoldBackgroundColor: Colors.white,
);