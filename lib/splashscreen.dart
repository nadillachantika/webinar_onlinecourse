import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webinar_online_course/onboarding/onboarding_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 2),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF0096C7),
      body: Container(
        child: Center(
          child: Image.asset('assets/icon/logo.png',height: 120,),
        ),
      ),
      
    );
    
  }
}
