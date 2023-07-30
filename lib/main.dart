import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'question': 'Select brand',
      'answer': ['Nike', 'Puma', 'Adidas']
    },
    {
      'question': 'Select product',
      'answer': ['Shoes', 'T-Shirts', 'Shorts']
    },
    {
      'question': 'Select a material',
      'answer': ['Cotton', 'Polyester', 'Lycra']
    },
    {
      'question': 'Select color',
      'answer': ['Black', 'White', 'Blue']
    }
  ];

  var questionIndex = 0;

  void _reset() {
    setState(() {
      if (questionIndex + 1 < questions.length) {
        questionIndex += 1;
      } else {
        questionIndex = 0;
      }
    });
    print('We have more questions');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIS Labaratoriska 2',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'AN APPLICATION FOR CLOTHING',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['question'] as String),
            ...(questions[questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_reset, answer);
            })
          ],
        ),
      ),
    );
  }
}
