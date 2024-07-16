
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movein/pages/home_page.dart';
import 'package:movein/onboardingScreens/first_onboardScreen.dart';
import 'package:movein/onboardingScreens/second_onboarding.dart';
import 'package:movein/onboardingScreens/third_onboardScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadScreens(),
    );
  }
}

class LoadScreens extends StatefulWidget {
  const LoadScreens({super.key});

  @override
  State<LoadScreens> createState() => _LoadScreensState();
}

class _LoadScreensState extends State<LoadScreens> {

  PageController pageController = PageController();
  String buttonText = "Skip";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [ PageView(
          controller: pageController,
          onPageChanged: (index) {
            if (index == 3) {
              buttonText = "Start";
            } else {
              buttonText = "Skip";
            }
            setState(() {
              
            });
          },
          children: const [
            Screen1(),
            Screen2(),
            Screen3(),
          
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(),
              SmoothPageIndicator(
                controller: pageController,
                 count: 3,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Homepage(),
                              ),
                            );
                },
                child: Text(buttonText, style: const TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ],),
    );
  }
}