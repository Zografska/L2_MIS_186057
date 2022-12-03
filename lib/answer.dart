import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  VoidCallback tapped;

  Answer(this.tapped, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: tapped,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
      child: Text(
        answerText,
        style: const TextStyle(
          color: Colors.red,
        ),
      ),
    );
  }
}
