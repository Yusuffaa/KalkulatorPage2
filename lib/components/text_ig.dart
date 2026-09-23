import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String myText;
  final double fontSize;

  const MyTitle({
    super.key,
    required this.myText,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}