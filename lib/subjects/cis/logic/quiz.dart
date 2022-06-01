import 'dart:async';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';


class Quiz extends StatefulWidget {
  const Quiz(
    this.questions,
    this.questionIndex,
    this.answerQuestion, {
    Key? key,
  }) : super(key: key);

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function(int s) answerQuestion;

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Timer? timer;
  int start = 10;


  


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       
        Question(
            widget.questions[widget.questionIndex]['questionText'].toString()),
        ...(widget.questions[widget.questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () =>
                  widget.answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
      ],
    );
  }
}