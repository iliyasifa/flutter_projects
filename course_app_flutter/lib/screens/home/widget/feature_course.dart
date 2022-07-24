import 'package:flutter/material.dart';

import '../../../models/course.dart';
import 'category_title.dart';
import 'course_item.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourse();
  FeatureCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryTitle(
          leftText: 'Top of the week',
          rightText: 'view all',
        ),
        Container(
          padding: const EdgeInsets.all(25),
          height: 300,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: coursesList.length,
            itemBuilder: (context, index) =>
                CourseItem(course: coursesList[index]),
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(width: 15),
          ),
        ),
      ],
    );
  }
}
