import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 26, 93, 80), Color.fromARGB(255, 65, 7, 62)),
      ), //Use the run as debug first then use the only debug or the pannel refresh button option here
    ),
  );
}
