import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  const Answer(this.x, this.answerText, {Key? key}) : super(key: key);

  final String answerText;
  final Function() x;

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  int questionIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
     
        margin:  const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        width: double.infinity,
        child: 
        ElevatedButton(
         // style: ElevatedButton.styleFrom(primary: ),
        onPressed: widget.x,
        child: Text(
          widget.answerText,
          style: const TextStyle(fontSize: 15),
        ),
      ),
        );
  }
}
