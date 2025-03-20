import 'package:flutter/material.dart';

import 'package:brava/style/style.dart';
import 'screens/home.dart';
import 'screens/camera.dart';
import 'screens/stats.dart';
import 'screens/limits.dart';
import 'screens/profile.dart';


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
      home: const BravaScreen(),
    );
  }
}


class BravaScreen extends StatefulWidget {
  const BravaScreen({super.key});

  @override
  State<BravaScreen> createState() => _BravaScreenState();
}

class _BravaScreenState extends State<BravaScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      <Widget>[Home(), Camera(), Limits(), Stats(), Profile(),][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
          NavigationDestination(icon: Icon(Icons.linked_camera_outlined), label: "Camera"),
          // NavigationDestination(icon: Icon(Icons.assignment_outlined), label: "Training"),
          NavigationDestination(icon: Icon(Icons.fitness_center_outlined), label: "Training"),
          NavigationDestination(icon: Icon(Icons.insights), label: "Stats"),
          NavigationDestination(icon: Icon(Icons.person_outline), label: "Profile")
        ],
      ),
    );
  }
}