import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/module.dart';

class CourseModule extends StatelessWidget {
  final Module module;
  const CourseModule({Key? key, required this.module}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: module.iconBorder,
                        width: 2,
                      ),
                      color: module.iconBg,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      module.icon,
                      size: 30,
                      color: module.iconColor,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: List.generate(
                        20,
                        (index) => Expanded(
                          child: Container(
                            width: 2,
                            color: index % 2 == 0
                                ? Colors.transparent
                                : module.iconBorder,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: module.moduleBorder,
                  width: 2,
                ),
                color: module.moduleBg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        module.title,
                        style: const TextStyle(
                          color: kFontLight,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: kFontLight,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    module.desc,
                    style: TextStyle(
                      fontSize: 18,
                      color: kFont.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      _builtButton(
                        Icons.access_time_filled,
                        module.time,
                      ),
                      const SizedBox(width: 10),
                      _builtButton(
                        Icons.bookmarks,
                        module.lesson,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _builtButton(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: module.buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: module.buttonFont,
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              color: module.buttonFont,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
