import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 26, 93, 80), Color.fromARGB(255, 255, 53, 246)),
      ), //Use the run as debug first then use the only debug or the pannel refresh button option here
    ),
  );
}


//Color.fromARGB(255, 26, 2, 80),
// Color.fromARGB(255, 133, 53, 246),
