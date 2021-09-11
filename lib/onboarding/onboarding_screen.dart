import 'package:flutter/material.dart';
import 'package:webinar_online_course/onboarding/secondpage.dart';
import 'package:webinar_online_course/onboarding/thirdpage.dart';
import 'package:dots_indicator/dots_indicator.dart';


import 'firstpage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPageIndex = 0;
  int pageLengt=0;

  @override
  void initState() {
    // TODO: implement initState
    currentPageIndex = 0;
    pageLengt= 3;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(
            children: <Widget>[
              PageView(
                physics: BouncingScrollPhysics(),
                children: <Widget> [
                  FirstPage(),
                  SecondPage(),
                  ThirdPage()
                ],
                onPageChanged: (value){
                  setState(() {
                    currentPageIndex = value;
                  });
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new DotsIndicator(
                      dotsCount: pageLengt,
                      position: currentPageIndex.toDouble(),
                    ),

                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
