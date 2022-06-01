import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import '../../all/Discrete/quiz.dart';
import '../../cis/logic/result.dart';
import 'dataQ.dart';




class Net extends StatefulWidget {
  const Net({Key? key}) : super(key: key);

  @override
  State<Net> createState() => _NetState();
}

//bool isSwitched = false;

class _NetState extends State<Net> {
  int questionIndex = 0;
  int _totalScore = 0;

  answerQuestion(int score) {
    if (kDebugMode) {
      print('Answer Chosen!');
    }
    setState(() {
      questionIndex += 1;
      _totalScore += score;
    });
    if (kDebugMode) {
      print(questionIndex);
    }
    if (kDebugMode) {
      print(_totalScore);
    }
  }

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz App',
            style: TextStyle(
               // color: isSwitched == false ? Colors.white : Colors.black),
          )),
         /* actions: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.black,
            ),
          ],*/
        ),
        body: Stack(
          children: [
        


            SizedBox(
              width: MediaQuery.of(context).size.width,
              
              child: WebsafeSvg.asset("assets/icons/bg.svg", fit: BoxFit.fill)),
            
            
            Container(
            //color: isSwitched == false ? Colors.white : Colors.black,
            child: questionIndex <n1.length
                ? Quiz(n1, questionIndex, answerQuestion)
                : Result(_resetQuiz, _totalScore),
          ),

          

          
          ]
          ),
      ),
    );
  }
}
