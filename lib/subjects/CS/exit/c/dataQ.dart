  import 'dart:math';

final List<Map<String, Object>> c1 = [
    {
      'questionText': '-Minimum,maximum,and successor in binary search tree are all implemented in…….time complexity.',
      'answers': [
        {'text': 'O(long)', 'score': 5, 'isCorrect': true},
        {'text': 'O(n2)', 'score': 0, 'isCorrect': false},
        {'text': 'O(n)', 'score': 0, 'isCorrect': false},
        {'text': 'O(n long)', 'score': 0, 'isCorrect': false},
      ]
    },
    {
      'questionText': 'which function is used to perform some action when the object is to be destroyed?',
      'answers': [
        {'text': 'delet()', 'score': 0, 'isCorrect': false},
        {'text': 'destructor', 'score': 0, 'isCorrect': false},
        {'text': 'finalize() ', 'score': 5, 'isCorrect': true},
        {'text': 'finalizer()', 'score': 0, 'isCorrect': false},
      ]
    },
    {
      'questionText': 'session layer allows a process to add synchronization points into a stream of data ,in order to allow.',
      'answers': [
        {'text': 'data transition', 'score': 0, 'isCorrect': false},
        {'text': 'data accuracy', 'score': 0, 'isCorrect': false},
        {'text': 'data encryption', 'score': 0, 'isCorrect': false},
        {'text': 'data recovery', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': 'the offset field of a main memory address is used to determine:',
      'answers': [
        {'text': 'if the cache entry is valid', 'score': 0, 'isCorrect': false},
        {'text': 'if the cache entry is the desired block ', 'score': 0, 'isCorrect': false},
        {'text': 'none of the above', 'score': 0, 'isCorrect': false},
        {'text': 'the location of the desired data in the cache block', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': 'What Kind of environment is a crossword puzzle?',
      'answers': [
        {'text': 'None of the mentioned', 'score': 0, 'isCorrect': false},
        {'text': 'Semi dynamic', 'score': 0, 'isCorrect': false},
        {'text': 'Dynamic', 'score': 0, 'isCorrect': false},
        {'text': 'Static', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': 'Every variable should be separated by ___ separator.',
      'answers': [
        {'text': 'Semicolon', 'score': 0, 'isCorrect': false},
        {'text': 'Dot', 'score': 0, 'isCorrect': false},
        {'text': 'Colon', 'score': 0, 'isCorrect': false},
        {'text': 'Comma', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': 'A single-user database that runs on a personal computer is called a(n) ____ database.',
      'answers': [
        {'text': 'workgroup', 'score': 0, 'isCorrect': false},
        {'text': 'distributed', 'score': 0, 'isCorrect': false},
        {'text': 'desktop', 'score': 5, 'isCorrect': true},
        {'text': 'enterprise', 'score': 0, 'isCorrect': false},
      ]
    },
    {
      'questionText': '-A form of spread spectrum in which the signal is broadcast over a seemingly random series of radio frequencies, hopping from frequency to frequency at fixed intervals',
      'answers': [
        {'text': 'FDM', 'score': 0, 'isCorrect': false},
        {'text': 'TDM', 'score': 0, 'isCorrect': false},
        {'text': 'DSSS', 'score': 0, 'isCorrect': false},
        {'text': 'FHSS ', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': 'A part of background services launches at boot time:',
      'answers': [
        {'text': 'Nothing of that', 'score': 0, 'isCorrect': false},
        {'text': 'True', 'score': 5, 'isCorrect': true},
        {'text': 'Partially True', 'score': 0, 'isCorrect': false},
        {'text': 'All of that', 'score': 0, 'isCorrect': false},
      ]
    },
    {
      'questionText': 'Which of the following is the union of {1, 2, 5} and {1, 2, 6}?',
      'answers': [
        {'text': '{1, 5, 6, 3}', 'score': 5, 'isCorrect': true},
        {'text': '{1, 2, 1, 2}', 'score': 0, 'isCorrect': false},
        {'text': '{1, 2, 6, 1}', 'score': 0, 'isCorrect': false},
        {'text': '{1, 2, 5, 6}', 'score': 0, 'isCorrect': true},
      ]
    },
  ];
  final _random = Random();
  var element = c1[_random.nextInt(c1.length)];
