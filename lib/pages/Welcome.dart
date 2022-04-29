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
          double c_width = MediaQuery.of(context).size.width * 0.8;
          return Container(
            // maxFinite is largest value available within infinity
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/" + images[index]),
                    fit: BoxFit.cover)),
            child: Container(
              width: c_width,
              margin: const EdgeInsets.only(top: 120, left: 40, right: 130),
              child: Column(
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 3,
                              width: 60,
                              margin: EdgeInsets.only(bottom: 20),
                              color: Color.fromARGB(255, 211, 31, 31),
                            ),
                            Padding(
                              padding:
                                const EdgeInsets.only(left: 10, bottom: 20),
                                child: Text(
                                  "Jacob Petrakovitz",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 211, 31, 31),
                                  ),
                                ),
                            ),
                          ],
                        ),
                        // Reusable large bold text widget
                        LargeText(
                            text:
                                "Hello, my name's Jacob. I'm a Software Developer."),
                      ],
                    ),
                  ),
                  Center(
                    child: Expanded(
                      flex: 3,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 90 ,bottom: 15),
                            child: Icon(
                              Icons.arrow_downward_rounded,
                              color: Colors.black38,
                              size: 60,
                            ),
                          )
                        ),
                      ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
