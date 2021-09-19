import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex],),
            RaisedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1',),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 2',),
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 3',),
            ),
          ],
        ),
      ),
    );
  }
}
