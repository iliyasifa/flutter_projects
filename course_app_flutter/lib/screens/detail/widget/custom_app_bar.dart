import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/course.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  const CustomAppBar({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  course.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 20,
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 40,
          child: SizedBox(
            height: 50,
            width: 110,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {},
              child: const Text('Start class'),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          left: 25,
          child: Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              iconSize: 20,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).padding.top,
          right: 25,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
              iconSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
