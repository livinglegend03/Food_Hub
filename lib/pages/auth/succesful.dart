import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_hub/pages/constants/color.dart';
import 'package:food_hub/pages/home_page.dart';

class SuccessfulAuth extends StatefulWidget {
  const SuccessfulAuth({super.key});

  @override
  State<SuccessfulAuth> createState() => _SuccessfulAuthState();
}

class _SuccessfulAuthState extends State<SuccessfulAuth> {
  @override
  void initState() {
    Timer(const Duration(seconds: 13), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: const Alignment(0, 0),
              child: AnimatedContainer(
                duration: const Duration(seconds: 4),
                curve: Curves.bounceIn,
                child: const Icon(
                  Icons.check_circle_rounded,
                  color: primaryColor,
                  size: 300,
                ),
              ),
            ),
            const Align(
              alignment: Alignment(0, 0),
              child: Text(
                'Successful',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
