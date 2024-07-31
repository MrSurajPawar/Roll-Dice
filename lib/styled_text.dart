import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});

  final String text; //instance variable of the class

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
