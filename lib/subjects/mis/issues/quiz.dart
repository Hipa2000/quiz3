import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../screens/newHome.dart';
import '../../cis/logic/answer.dart';
import '../../cis/logic/question.dart';


class Quiz extends StatelessWidget {
  const Quiz(
    this.i6,
    this.questionIndex,
    this.answerQuestion, {
    Key? key,
  }) : super(key: key);

  final List<Map<String, Object>> i6;
  final int questionIndex;
  final Function(int s) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(i6[questionIndex]['questionText'].toString()),
        ...(i6[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
        
      ],
    );
  }
}
