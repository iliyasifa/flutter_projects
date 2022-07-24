import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../constants/colors.dart';
import 'category_title.dart';

class ActiveCourse extends StatelessWidget {
  const ActiveCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle(
            leftText: 'Currently active', rightText: 'view all'),
        Container(
          margin: const EdgeInsets.only(
            top: 30,
            right: 20,
            left: 20,
          ),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: kFontLight.withOpacity(0.1),
            border: Border.all(
              color: kFontLight.withOpacity(0.3),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/progress.png',
                      width: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Symetry theory',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kFont,
                        ),
                      ),
                      Text(
                        '2 lessons left',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kFontLight,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              CircularPercentIndicator(
                radius: 35.0,
                lineWidth: 5.0,
                percent: 0.61,
                center: const Text(
                  '61%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                progressColor: kAccent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
