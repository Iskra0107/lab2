import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Answer extends StatelessWidget {
  String answerText;
  VoidCallback clicked;

  Answer(this.clicked, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          child: Text(
            answerText,
            style: TextStyle(color: Colors.red),
          ),
          onPressed: clicked,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 119, 223, 123)),
          ),
        ));
  }
}
