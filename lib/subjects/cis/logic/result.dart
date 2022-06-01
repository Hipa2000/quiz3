import 'package:flutter/material.dart';

import '../../../screens/newHome.dart';


class Result extends StatelessWidget {
  const Result(this.holder, this.resultScore, {Key? key}) : super(key: key);

  final Function() holder;
  final int resultScore;

  String get resultPhrase {
    String resultText = '';
    if (resultScore >= 40) {
      resultText = 'You are awesome!';
    } else if (resultScore >= 30) {
      resultText = 'Pretty likable!';
    } else {
      resultText = 'Study Well good luck!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Done!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              // color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          Text(
            'Total Score = $resultScore',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              // color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              // color: isSwitched == false ? Colors.black : Colors.white,
            ),
          ),
          TextButton(
            onPressed: holder,
            child: const Text(
              'Restart The Quiz',
              style: TextStyle(
                fontSize: 30,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyHomePage(),
                            ));

              },
              child: const Text(
                "Home Page",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}
