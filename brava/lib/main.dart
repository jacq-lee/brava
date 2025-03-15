import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:brava/style/style.dart';
import 'screens/loading.dart';
import 'screens/home.dart';
import 'screens/camera.dart';
import 'screens/stats.dart';
import 'screens/stats2.dart';
import 'screens/limits.dart';


// const bravaPink = Color(0xFFFE6E93);
// const lightPink = Color(0xFFFFDEEA);
// const lightestPink = Color(0xFFFFFAFB);
// const queenPink = Color(0xFFEF3A69);
// const dirtyDuckGrey = Color(0xFFCDC1C1);
// const stagePink = Color(0xFF390A17);
// const marleyBlack = Color(0xFF131214);


void main() {
  runApp(const Brava());
}

class Brava extends StatelessWidget{
  const Brava({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brava',
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      // ),
      theme: bravaAppTheme,
      // theme: ThemeData(
      //   // The theme of the application.
      //   // Most important attributes: colorScheme and textTheme.
      //   useMaterial3: true,
      //   colorScheme: ColorScheme.fromSeed(seedColor: bravaPink),
      //   // Define the default text styling for headlines, titles, bodies of
      //   // text, etc.
      //   textTheme: TextTheme(
      //     // displayLarge: const TextStyle(
      //     //   fontSize: 72,
      //     //   fontWeight: FontWeight.bold,
      //     // ),
      //     // // ···
      //     // titleLarge: GoogleFonts.oswald(
      //     //   fontSize: 30,
      //     //   fontStyle: FontStyle.italic,
      //     // ),
      //     bodyMedium: GoogleFonts.figtree(),
      //     displaySmall: GoogleFonts.figtree(),
      //   ),
      //   scaffoldBackgroundColor: Color(0xFFFFFFFF),
      // ),
      home: Scaffold(
        // body: Center(child: Loading()),
        body: Center(child: Home()),
        // body: Center(child: Camera()),
        // body: Center(child: Limits()),
        // body: Center(child: Stats()),
        // body: Center(child: Stats2()),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.list), label: "Training"),
            NavigationDestination(icon: Icon(Icons.bar_chart), label: "Stats"),
            NavigationDestination(icon: Icon(Icons.camera), label: "Camera"),
          ],
          // indicatorColor: Colors.pink,
          // onDestinationSelected: (index) {
          //   if (index == 1) Navigator.pushNamed(context, 'screens/training_limits');
          //   if (index == 2) Navigator.pushNamed(context, 'screens/stats');
          //   if (index == 3) Navigator.pushNamed(context, 'screens/camera');
          // },
        ),
      ),
    );
  }
}

