import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  final String content;
  const CustomText(this.content);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
          fontFamily: 'Montserrat',
          color: Colors.white,
          fontSize: 20.0),
    );
  }

}