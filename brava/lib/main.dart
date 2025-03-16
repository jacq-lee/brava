import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:brava/style/style.dart';
import 'screens/loading.dart';
import 'screens/home.dart';
import 'screens/camera.dart';
import 'screens/stats.dart';
import 'screens/stats2.dart';
import 'screens/limits.dart';


void main() {
  runApp(const Brava());
}

class Brava extends StatelessWidget{
  const Brava({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brava',
      theme: bravaAppTheme,
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
        ),
      ),
    );
  }
}

