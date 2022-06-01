import 'package:flutter/material.dart';
import '../../cis/logic/answer.dart';
import '../../cis/logic/question.dart';


class Quiz extends StatelessWidget {
  const Quiz(
    this.A8,
    this.questionIndex,
    this.answerQuestion, {
    Key? key,
  }) : super(key: key);

  final List<Map<String, Object>> A8;
  final int questionIndex;
  final Function(int s) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(A8[questionIndex]['questionText'].toString()),
        ...(A8[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
        
      ],
    );
  }
}
