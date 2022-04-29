import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  // variables created for size, color, and text input
  double size;
  final String text;
  final Color color;

  LargeText({Key? key, 
  // variables definitions set
  this.size = 35,
  required this.text, 
  this.color = Colors.black,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
