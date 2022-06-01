

  import 'dart:math';

final List<Map<String, Object>> a1 = [
    {
      'questionText': 'Heap satisfy the heap property:',
      'answers': [
        {'text': 'for every node i other then the root A[parent(i)]>A[i]for all nodes i > i', 'score': 5, 'isCorrect': true},
        {'text': 'for every node i other then the root A[parent(i)]<A[i]', 'score': 0, 'isCorrect': false},
        {'text': 'for every node i other then the root A[parent(i)]>A[i]for all nodes i < i', 'score': 0, 'isCorrect': false},
        {'text': 'for every node i other then the root A[parent(i)]=A[i]for all nodes i < i', 'score': 0, 'isCorrect': false},
      ]
    },
    {
      'questionText': '-in java programming.the process by which one object acquires the properties of anothe object is called',
      'answers': [
        {'text': 'Overloading', 'score': 0, 'isCorrect': false},
        {'text': 'Overriding', 'score': 0, 'isCorrect': false},
        {'text': 'inheritance', 'score': 5, 'isCorrect': true},
        {'text': 'composition', 'score': 0, 'isCorrect': false},
      ]
    },
    {
      'questionText': 'A LAN',
      'answers': [
        {'text': 'network spanning a large geographical area', 'score': 0, 'isCorrect': false},
        {'text': ' a network spanning a geographical area that usually encompasses a city.', 'score': 0, 'isCorrect': false},
        {'text': 'a large central network that connects other networks in a distance spanning exactly 5 miles.', 'score': 0, 'isCorrect': false},
        {'text': ' a group of pCs located in the same general area and connected by a common cable', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': 'What is the action of the task environment in artificial intelligence',
      'answers': [
        {'text': 'Observation', 'score': 0, 'isCorrect': false},
        {'text': 'Agent', 'score': 0, 'isCorrect': false},
        {'text': 'Solution', 'score': 0, 'isCorrect': false},
        {'text': 'Problem', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': '-cache replacement policies are necessary: ',
      'answers': [
        {'text': 'to decide where to put blocks when cache is empty', 'score': 0, 'isCorrect': false},
        {'text': 'all of the above', 'score': 0, 'isCorrect': false},
        {'text': ')to determine which cache mapping policy to use', 'score': 0, 'isCorrect': false},
        {'text': 'to determine which block in cache should be the victim bloc', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': 'if set a has 4 elements and b has 3 elements then set n(a x b) is',
      'answers': [
        {'text': '7', 'score': 0, 'isCorrect': false},
        {'text': '24', 'score': 0, 'isCorrect': false},
        {'text': '14', 'score': 0, 'isCorrect': false},
        {'text': '12', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': 'Which one of the following is a keyword',
      'answers': [
        {'text': 'Key', 'score': 0, 'isCorrect': false},
        {'text': 'Jump(', 'score': 0, 'isCorrect': false},
        {'text': 'Switch', 'score': 5, 'isCorrect': true},
        {'text': 'Size(', 'score': 0, 'isCorrect': false},
      ]
    },
    {
      'questionText': 'What is a benefit of using a DBMS',
      'answers': [
        {'text': 'they provide seamless Internet access to database data', 'score': 0, 'isCorrect': false},
        {'text': 'they provide full security to data using private/public key encryption', 'score': 0, 'isCorrect': false},
        {'text': 'they create automatic backups .', 'score': 0, 'isCorrect': false},
        {'text': 'they help create an environment for end users to have access to more data', 'score': 5, 'isCorrect': true},
      ]
    },
    {
      'questionText': 'A multiple access scheme used with spread spectrum where several transmitters can use different codes to send information simultaneously over the same channel without any interference',
      'answers': [
        {'text': 'SDMA', 'score': 0, 'isCorrect': false},
        {'text': 'CDMA', 'score': 5, 'isCorrect': true},
        {'text': 'FDMA', 'score': 0, 'isCorrect': false},
        {'text': 'TDMA', 'score': 0, 'isCorrect': false},
      ]
    },
    {
      'questionText': 'Why multithreaded Is the trend recently?',
      'answers': [
        {'text': 'Multi-threaded applications are trend currently', 'score': 5, 'isCorrect': true},
        {'text': 'Thread creation lighter than process creation', 'score': 0, 'isCorrect': false},
        {'text': 'Threads handling and running outside of kernel', 'score': 0, 'isCorrect': false},
        {'text': 'All above', 'score': 0, 'isCorrect': true},
      ]
    },
  ];
  final _random = new Random();
  var element = a1[_random.nextInt(a1.length)];