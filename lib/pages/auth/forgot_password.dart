import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/color.dart';
import 'succesful.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController passwordReset = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: const Alignment(6, 1),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 40,
                      spreadRadius: 1,
                      offset: Offset(20, 20),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 30,
                      spreadRadius: 1,
                      offset: Offset(-20, -20),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              const Text(
                'Password Reset',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 90.0),
                child: Text(
                  'Please enter your email address to request a password reset',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: passwordReset,
                obscureText: isPressed,
                inputFormatters: [LengthLimitingTextInputFormatter(16)],
                // onEditingComplete: () {
                //   if (value => 6 || passwordReset<=16) {

                //   }
                // },
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                      icon: Icon(isPressed
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined)),
                  suffixIconColor: Colors.grey,
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              // Confirm Password
              TextField(
                controller: confirmPassword,
                obscureText: isPressed,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                      icon: Icon(isPressed
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined)),
                  suffixIconColor: Colors.grey,
                ),
              ),

              const SizedBox(
                height: 50,
              ),

              // Button
              Align(
                alignment: const Alignment(0, 0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SuccessfulAuth()));
                  },
                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 60,
                          spreadRadius: 1,
                          offset: Offset(10, 10),
                          color: Colors.black54,
                        ),
                        BoxShadow(
                          blurRadius: 60,
                          spreadRadius: 1,
                          offset: Offset(-10, -10),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
