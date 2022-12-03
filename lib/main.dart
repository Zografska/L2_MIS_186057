import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

const question = "question";
const answer = "answer";

void main() {
  runApp(const MyAppState());
}

class MyAppStateState extends State<MyAppState> {
  void _iWasTapped() {
    setState(() {
      if (_questionIndex + 1 < questions.length) {
        _questionIndex += 1;
      } else {
        _questionIndex = 0;
      }
    });
  }

  var questions = [
    {
      question: 'Select shirt color',
      answer: ['Blue', 'Red', 'Yellow', 'Green']
    },
    {
      question: 'Select pants',
      answer: ['Mom Jeans', 'Skinny Jeans', 'Shorts']
    },
    {
      question: 'Select shoes',
      answer: ['Nike AirForce', 'Puma Suade', 'DocMartens']
    },
    {
      question: 'Select accessory',
      answer: ['Fedora', 'Beanie', 'Beret', 'Visor', 'Cowboy']
    },
  ];
  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Create Outfit",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Create Outfit"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex][question] as String),
            ...(questions[_questionIndex][answer] as List<String>)
                .map((answer) {
              return Answer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}

class MyAppState extends StatefulWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  MyAppStateState createState() => MyAppStateState();
}
