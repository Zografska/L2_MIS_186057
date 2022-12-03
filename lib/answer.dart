import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  VoidCallback tapped;

  Answer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: tapped,
        child: Text(
          answerText,
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
      ),
    );
  }
}
