import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_hub/pages/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 10,
        ), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GetStarted()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFE724C),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 93,
                width: 93,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TweenAnimationBuilder(
                  tween: Tween<double>(
                    begin: 0,
                    end: 1,
                  ),
                  duration: const Duration(seconds: 5),
                  builder: (context, _, child) {
                    return Opacity(
                      opacity: _,
                      child: child,
                    );
                  },
                  child: Image.asset(
                    'images/food_hub_logo1.png',
                  ),
                ),
              ),
              Image.asset('images/food_hub_text_logo.png'),
            ],
          ),
        ),
      ),
    );
  }
}
