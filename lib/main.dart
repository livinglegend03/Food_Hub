import 'package:flutter/material.dart';
import 'package:food_hub/splash_screen.dart';

void main() {
  runApp(const FoodHub());
}

class FoodHub extends StatelessWidget {
  const FoodHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
