import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:staggered_view/screen/home/widget/place_staggered_gridview.dart';
import 'package:staggered_view/screen/home/widget/search_input.dart';

import 'widget/category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchInput(),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                'Explore the World\nwith us!',
                style: TextStyle(
                  fontFamily: 'Georgia',
                  height: 1.3,
                  fontSize: 30,
                ),
              ),
            ),
            const CategoryList(),
            PlaceStaggeredGridView()
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          width: 24,
        ),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
            'assets/icons/user.png',
            width: 36,
          ),
        ),
      ],
    );
  }
}
