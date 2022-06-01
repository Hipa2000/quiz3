import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzapp/subjects/cis/logic/answer.dart';

import '../../../screens/newHome.dart';
import '../../cis/logic/question.dart';



class Quiz extends StatelessWidget {
  const Quiz(
    this.I1,
    this.questionIndex,
    this.answerQuestion, {
    Key? key,
  }) : super(key: key);

  final List<Map<String, Object>> I1;
  final int questionIndex;
  final Function(int s) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(I1[questionIndex]['questionText'].toString()),
        ...(I1[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'].toString())),
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
