import 'package:flutter/material.dart';
import 'package:intro_screen/intro_screens/intro_page1.dart';
import 'package:intro_screen/intro_screens/intro_page2.dart';
import 'package:intro_screen/intro_screens/intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // controller to keep track of which page we,re on
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // page view
          PageView(
            controller: _controller,
            children: [
            IntroPage1(),
            IntroPage2(),
            IntroPage3(),
            ],
          ),
          // dot indicator

          Container(
            alignment: Alignment(0, 0.75),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ),
        ],
      ),
    );
  }
}
