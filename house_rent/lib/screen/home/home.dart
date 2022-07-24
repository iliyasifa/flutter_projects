import 'package:flutter/material.dart';
import 'package:house_rent/screen/home/widget/best_offer.dart';
import 'package:house_rent/screen/home/widget/categories.dart';
import 'package:house_rent/screen/home/widget/custom_app_bar.dart';
import 'package:house_rent/screen/home/widget/recommeded_houses.dart';
import 'package:house_rent/screen/home/widget/search_input.dart';
import 'package:house_rent/screen/home/widget/welcome_text.dart';

import 'widget/custom_bottom_navigation_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(),
            const SearchInput(),
            const Categories(),
            RecommededHouses(),
            BestOffer(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
