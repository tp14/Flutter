import 'package:flutter/material.dart';

class AppBarText extends StatelessWidget {

  final String text;

  AppBarText({Key? key,  required this.text}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25.0,
      ),
    );
  }

}