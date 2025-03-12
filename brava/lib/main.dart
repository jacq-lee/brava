import 'package:flutter/material.dart';
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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children:[
          //Loading(),
          //Home(),
          //Camera(),
          // Limits(),
          // Stats(),
          Stats2(),
        ]),
      ),
    );
  }
}

