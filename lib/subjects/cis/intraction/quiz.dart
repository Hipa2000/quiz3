import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../screens/newHome.dart';
import '../logic/answer.dart';
import '../logic/question.dart';
import 'begin.dart';

class Quiz extends StatefulWidget {
  const Quiz(
    this.q3,
    this.questionIndex,
    this.answerQuestion, {
    Key? key,
  }) : super(key: key);

  final List<Map<String, Object>> q3;
  final int questionIndex;
  final Function(int s) answerQuestion;

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
   Timer? timer;
  int start = 10;
  

  @override
  void initState() {
    

    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  } 
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Text("$start"),
        Question(widget.q3[widget.questionIndex]['questionText'].toString()),
        ...(widget.q3[widget.questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => widget.answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
        TextButton(
            onPressed: () {
              Get.to(() => MyHomePage());
            },
            child: const Icon(Icons.home))
      ],
    );
  }
}
