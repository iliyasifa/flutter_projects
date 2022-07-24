import 'package:flutter/material.dart';
import 'widgets/quiz.dart';
import 'modal/question.dart';
import 'widgets/result.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      if (questionIndex < Questions.questions.length) {
        questionIndex += 1;
      }
    });
  }

  void resetHandler() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz Application'),
        ),
        body: questionIndex < Questions.questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
              )
            : Result(
                resetHandler: resetHandler,
                totalScored: totalScore,
              ),
      ),
    );
  }
}
