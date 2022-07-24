import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'widget/active_course.dart';
import 'widget/emoji_text.dart';
import 'widget/feature_course.dart';
import 'widget/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const EmojiText(),
            const SearchInput(),
            FeatureCourse(),
            const ActiveCourse(),
          ],
        ),
      ),
      bottomNavigationBar: _builtBottomNavigationBar(),
    );
  }

  BottomNavigationBar _builtBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: kBackground,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'home',
          icon: Container(
            padding: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kAccent,
                  width: 2,
                ),
              ),
            ),
            child: const Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: 'calender',
          icon: Image.asset(
            'assets/icons/calender.png',
            width: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: 'bookmark',
          icon: Image.asset(
            'assets/icons/bookmark.png',
            width: 20,
          ),
        ),
        BottomNavigationBarItem(
          label: 'user',
          icon: Image.asset(
            'assets/icons/user.png',
            width: 20,
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      backgroundColor: kBackground,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          'Hello Iliyas !',
          style: TextStyle(
            fontSize: 16,
            color: kFontLight,
          ),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kFontLight.withOpacity(0.3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
              ),
            ),
            Positioned(
              top: 15,
              right: 30,
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: kAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
