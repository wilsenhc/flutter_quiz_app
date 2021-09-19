import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        primary: true,
        appBar: AppBar(
          title: const Text('My first app'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: const Text(
                'Answer 1',
              ),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: const Text(
                'Answer 2',
              ),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: const Text(
                'Answer 3',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
