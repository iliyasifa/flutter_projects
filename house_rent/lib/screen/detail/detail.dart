import 'package:flutter/material.dart';
import 'package:house_rent/modal/houses.dart';
import 'package:house_rent/screen/detail/widget/detail_app_bar.dart';

import 'widget/about.dart';
import 'widget/content_intro.dart';
import 'widget/house_info.dart';

class DetailPage extends StatelessWidget {
  final Houses houses;
  const DetailPage({Key? key, required this.houses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(houses: houses),
            const SizedBox(height: 20),
            ContentIntro(houses: houses),
            const SizedBox(height: 20),
            const HouseInfo(),
            const SizedBox(height: 20),
            const About(),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: const Text(
                    'Book now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
