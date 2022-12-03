import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {
  var _stringquestionContent;

  ClothesQuestion(this._stringquestionContent);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(5),
      child: Text(
        _stringquestionContent,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20, color: Colors.blue),
      ),
    );
  }
}
