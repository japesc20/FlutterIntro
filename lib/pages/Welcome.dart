import 'package:flutter/material.dart';
import 'package:flutter_intro/widgets/LargerText.dart';

void main() => runApp(Welcome());

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  // Array of images used as background
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
      // PageView builder creates a scrollable list
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
          double c_width = MediaQuery.of(context).size.width*0.8;
            return Container(
              // maxFinite is largest value available within infinity
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/" + images[index]),
                      fit: BoxFit.cover)
              ),
              child: Container(
                width: c_width,
                margin: const EdgeInsets.only(top: 150, left: 60, right: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                      // Reusable large bold text widget
                        LargeText(text: "Hello"),
                    ],)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
