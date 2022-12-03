import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {
  String _stringquestionContent;

  ClothesQuestion(this._stringquestionContent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      child: Text(
        _stringquestionContent,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20, color: Colors.blue),
      ),
    );
  }
}
