import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 65, 65, 65),
          height: 350.0,
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 80, left: 100),
            child: Column(
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/code.png'),
                          fit: BoxFit.fill),
                      shape: BoxShape.circle),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      'Jacob Petrakovitz',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "GoogleSansRegular",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 141, 141, 141)),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Software Developer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Aleo',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Color.fromARGB(255, 141, 141, 141)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
