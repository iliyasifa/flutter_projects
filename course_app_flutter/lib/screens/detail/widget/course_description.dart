import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/course.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  const CourseDescription({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                course.authorImg,
                width: 20,
              ),
              const SizedBox(width: 5),
              Text(
                course.author,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 5,
                width: 5,
                decoration: const BoxDecoration(
                  color: kFontLight,
                  shape: BoxShape.circle,
                ),
              ),
              const Icon(
                Icons.access_time_filled,
                size: 20,
                color: kAccent,
              ),
              const SizedBox(width: 5),
              const Text(
                '1h 35 min',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: kFont,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            course.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: kFont,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'How we developed speech and how it\nbecame such a powerfull tool, let\'s see.',
            style: TextStyle(
              wordSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: kFontLight,
            ),
          ),
        ],
      ),
    );
  }
}
