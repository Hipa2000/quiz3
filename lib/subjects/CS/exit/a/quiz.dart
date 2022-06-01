import 'package:flutter/material.dart';
import '../../../cis/logic/answer.dart';
import '../../../cis/logic/question.dart';



class Quiz extends StatelessWidget {
  const Quiz(
    this.a1,
    this.questionIndex,
    this.answerQuestion, {
    Key? key,
  }) : super(key: key);

  final List<Map<String, Object>> a1;
  final int questionIndex;
  final Function(int s) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(a1[questionIndex]['questionText'].toString()),
        ...(a1[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
       
      ],
    );
  }
}
