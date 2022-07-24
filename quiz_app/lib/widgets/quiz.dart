import 'package:flutter/material.dart';

import '../modal/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;

  const Quiz({
    Key? key,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          child: Text(
            "${questionIndex + 1}.${Questions.questions[questionIndex]['question']}",
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 22),
          ),
        ),
        ...(Questions.questions[questionIndex]['answer'] as List)
            .map(
              (e) => Answer(
                selectHandler: () => answerQuestion(e['score'] as int),
                answerText: e['text'] as String,
              ),
            )
            .toList(),
      ],
    );
  }
}
