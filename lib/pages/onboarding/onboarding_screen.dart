import 'package:flutter/material.dart';
import 'package:food_hub/pages/onboarding/onboarding_models.dart';

import '../auth/signin.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int? index;
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                
              ),
              Expanded(
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex =index;
                    });
                  },
                  controller: _pageController,
                  itemCount: screens.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        // Onboarding Images
                        Container(
                          height: 350,
                          width: 400,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(400),
                              border:
                                  Border.all(width: 1, color: Colors.green)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(150),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 40,
                                      spreadRadius: 1,
                                      color: Colors.white,
                                      offset: Offset(3, 3),
                                    ),
                                    BoxShadow(
                                      blurRadius: 40,
                                      spreadRadius: 1,
                                      color: Colors.black26,
                                      offset: Offset(-3, -3),
                                    ),
                                  ]),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 100,
                                backgroundImage: AssetImage(
                                  screens[index].textImage,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        // Dot Pages
                        Container(
                          height: 8,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: screens.length,
                            itemBuilder: (_, index) {
                              return Container(
                                height: 8,
                                width: currentIndex == index ? 30 : 8,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: currentIndex == index
                                      ? Colors.yellow[800]
                                      : Colors.grey[200],
                                ),
                              );
                            },
                          ),
                        ),
                        // Title
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          screens[index].title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                            color: Color(0xFF0D498D),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // Description
                        Text(
                          screens[index].desc,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  if (currentIndex == screens.length - 1) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) =>  SignIn()),
                        ));
                  }
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInQuad);
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xffFE724C)),
                  child: const Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
