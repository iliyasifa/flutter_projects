import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/module.dart';
import 'course_module.dart';

class CourseProgress extends StatelessWidget {
  final modulesList = Module.generateModules();
  CourseProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'The Progress',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kFont,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/grid.png',
                    width: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    'assets/icons/list.png',
                    width: 25,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ...modulesList
              .map(
                (e) => CourseModule(module: e),
              )
              .toList()
        ],
      ),
    );
  }
}
