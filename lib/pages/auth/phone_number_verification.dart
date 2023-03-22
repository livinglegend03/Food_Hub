import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../constants/color.dart';
import 'verification_code.dart';

class PhoneNumberVerification extends StatelessWidget {
  const PhoneNumberVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
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
                      'Registration',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     const Padding(
                       padding: EdgeInsets.only(right:100.0),
                       child: Text(
                        'Enter your phone number to verify your account',
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
                    IntlPhoneField(
                      
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      initialCountryCode: 'NG',
                      // onChanged: (phone) {
                      //   print(phone.completeNumber);
                      // },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: const Alignment(0, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VerifyCode()));
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
                              'VERIFY',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
