import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:citylegends_onboarding/ONBOARDING-FLOW/welcome.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('images/logo-gra.png'),
        nextScreen: welcomeHome(),
        splashTransition: SplashTransition.scaleTransition,
        splashIconSize: 1000,
        backgroundColor: Colors.black,
        duration: 2000,
      ),
    );
  }
}
