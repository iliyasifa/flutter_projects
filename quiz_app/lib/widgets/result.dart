import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback resetHandler;
  final int totalScored;

  const Result({
    Key? key,
    required this.resetHandler,
    required this.totalScored,
  }) : super(key: key);

  String resultPhrase() {
    String resultText;

    if (totalScored == 6) {
      resultText = 'Fantastic';
    } else if (totalScored > 5) {
      resultText = 'Awesome';
    } else if (totalScored > 4) {
      resultText = 'Good';
    } else if (totalScored > 2) {
      resultText = 'Better';
    } else if (totalScored > 0) {
      resultText = 'Don\'t worry ,Never Stop Learning';
    } else {
      resultText = 'Bad';
    }

    return resultText;
  }

  Color resultPhraseColor() {
    Color color;
    if (totalScored == 6) {
      color = Colors.green;
    } else if (totalScored > 5) {
      color = Colors.blue;
    } else if (totalScored > 4) {
      color = Colors.indigoAccent;
    } else if (totalScored > 2) {
      color = Colors.grey;
    } else if (totalScored > 0) {
      color = Colors.amber;
    } else {
      color = Colors.red;
    }

    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Text(
              resultPhrase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: resultPhraseColor(),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "You've scored $totalScored out of 6",
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: const Text(
              'You wanna try again',
            ),
          ),
        ],
      ),
    );
  }
}
