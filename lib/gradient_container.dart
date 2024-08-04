import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

//Declaring the variable for the alignments
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//class in the dart aka Custome widget. GradientContainer class extends
//StatelessWidget, meaning its state cannot change over time.
class GradientContainer extends StatelessWidget {
  // Default constructor
  const GradientContainer(this.colorChanger1, this.colorChanger2, {super.key});

  //Named constructor
  const GradientContainer.bgColor({super.key})
      : colorChanger1 = Colors.deepPurple,
        colorChanger2 = Colors.indigo;

  //Properties
  final Color colorChanger1;
  final Color colorChanger2;

  //build(context) method is overridden to describe how to display the widget.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorChanger1, colorChanger2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
