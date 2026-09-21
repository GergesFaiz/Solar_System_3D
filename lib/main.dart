import 'package:flutter/material.dart';
import 'package:solar_system_3d/Screens/LoginScreen.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/planetDetailsScreen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Loginscreen.routeName,
      routes: {
        Loginscreen.routeName:(context)=>Loginscreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        planetDetailsScreen.routeName: (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
          return planetDetailsScreen(planet: args);
        },

      },
    );
  }
}
