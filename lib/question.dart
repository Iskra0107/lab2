import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionContent;
  Question(this.questionContent);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        padding: EdgeInsets.all(30),
        child: Text(
          questionContent,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.blue.shade500),
        ));
  }
}
