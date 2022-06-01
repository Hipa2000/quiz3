import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../screens/newHome.dart';
import '../../cis/logic/answer.dart';
import '../../cis/logic/question.dart';


class Quiz extends StatelessWidget {
  const Quiz(
    this.d6,
    this.questionIndex,
    this.answerQuestion, {
    Key? key,
  }) : super(key: key);

  final List<Map<String, Object>> d6;
  final int questionIndex;
  final Function(int s) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(d6[questionIndex]['questionText'].toString()),
        ...(d6[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
        TextButton(
            onPressed: () {
              Get.to(() => const MyHomePage());
            },
            child: const Icon(Icons.home))
      ],
    );
  }
}
