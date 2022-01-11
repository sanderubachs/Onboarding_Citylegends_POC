import 'package:citylegends_onboarding/ONBOARDING-FLOW/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citylegends Onboarding',
      theme: ThemeData(
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.transparent),
        primarySwatch: Colors.orange,
        fontFamily: 'SF Pro Display',
      ),
      // home: HomePage(),
      home: splashScreen(),
    );
  }
}
