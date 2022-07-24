import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  const CategoryTitle({
    Key? key,
    required this.leftText,
    required this.rightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kFont,
            ),
          ),
          Text(
            rightText,
            style: const TextStyle(
              fontSize: 16,
              color: kFontLight,
            ),
          ),
        ],
      ),
    );
  }
}
