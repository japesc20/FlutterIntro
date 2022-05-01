import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'pages/Welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "GoogleSansRegular",
      ),
      title: 'Jacob Petrakovitz',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Container(
            width: 340,
            height: 212,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/splash_logo.png"),
                fit: BoxFit.cover
              )
            )
          )
        ],
      ), 
      backgroundColor: Color.fromRGBO(86, 86, 86, 100),
      nextScreen: Welcome(),
      splashIconSize: 250,
      pageTransitionType: PageTransitionType.topToBottom,
      duration: 3000,
    );
  }
}