import 'package:flutter/material.dart';
import '../../../cis/logic/answer.dart';
import '../../../cis/logic/question.dart';



class Quiz extends StatelessWidget {
  const Quiz(
    this.b1,
    this.questionIndex,
    this.answerQuestion, {
    Key? key,
  }) : super(key: key);

  final List<Map<String, Object>> b1;
  final int questionIndex;
  final Function(int s) answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(b1[questionIndex]['questionText'].toString()),
        ...(b1[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'].toString())),
              answer['text'].toString());
        }).toList(),
       
      ],
    );
  }
}
