import 'package:flutter/material.dart';

//Declaring the variable for the alignments
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//class in the dart aka Custome widget. GradientContainer class extends StatelessWidget, meaning its state cannot change over time.
class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key);
  const GradientContainer(this.colorChanger1, this.colorChanger2, {super.key});

  //the class can have multiple constructor seprated by dot(.)
  const GradientContainer.bgColor({super.key})
      : colorChanger1 = Colors.deepPurple,
        colorChanger2 = Colors.indigo;

  //Properties
  final Color colorChanger1;
  final Color colorChanger2;

  //methods or function
  void rollDice() {
    //....
  }
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
      child: Center(
        child: Column(children: [
          Image.asset(
            'assets/images/dice-2.png',
            width: 200,
          ),
          TextButton(
            onPressed: rollDice,
            child: const Text('Roll the Dice'),
          ),
          ElevatedButton(
            onPressed: rollDice,
            child: const Text('Button 2'),
          ),
          OutlinedButton(
            onPressed: rollDice,
            child: const Text('Button 3'),
          ),
        ]),
      ),
    );
  }
}
