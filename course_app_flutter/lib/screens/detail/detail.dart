import 'package:flutter/material.dart';

import '../../models/course.dart';
import 'widget/course_description.dart';
import 'widget/course_progress.dart';
import 'widget/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Course course;
  const DetailPage({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course: course),
            CourseDescription(course: course),
            CourseProgress(),
          ],
        ),
      ),
    );
  }
}
