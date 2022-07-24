import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(answerText, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
