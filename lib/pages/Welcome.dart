import 'package:flutter/material.dart';

void main() => runApp(Welcome());

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List images = [
    "welcome-1.png",
    "welcome-2.png",
    "welcome-3.jpg",
    "welcome-4.jpg",
    "welcome-5.png",
    "welcome-6.jpg",
    "welcome-7.png",
    "welcome-8.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/" + images[index]),
                      fit: BoxFit.cover)),
            );
          }),
    );
  }
}
