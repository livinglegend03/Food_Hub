import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_hub/pages/onboarding/onboarding_screen.dart';

import 'auth/signin.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/bg_image.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
              child: Container(
            decoration: BoxDecoration(
                // color: Colors.blue,
                gradient: LinearGradient(
              stops: const [0.3, 0.9],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.5),
                const Color(0xFF15446B).withOpacity(1),
              ],
            )),
          )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: const Alignment(1, 2),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 1,
                            offset: Offset(4, 4),
                            color: Colors.grey,
                          ),
                          BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 1,
                            offset: Offset(-5, -5),
                            color: Colors.white24,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => OnboardingScreen()),
                            ));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xffFE724C),
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                const Text(
                  'Welcome to',
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                  ),
                ),
                const Text(
                  'FoodHub',
                  style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Color(0xffFE724C)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 70.0),
                  child: Text(
                    'Your favourite food delivered at your door as fast as you want',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      color: Colors.black54,
                    ),
                  ),
                ),
                const Spacer(),
                const Center(child: Text('Sign up with')),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/facebook.png',
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Facebook',
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/google.png',
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Google',
                              style: TextStyle(fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignIn()));
                  },
                  child: Container(
                    alignment: const Alignment(0, 0),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.2),
                            Colors.white.withOpacity(0.2),
                          ],
                        )),
                    child: const Text(
                      'Start with email or phone',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
