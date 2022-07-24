import 'package:flutter/material.dart';
import 'package:staggered_view/model/place.dart';
import 'package:staggered_view/screen/detail/widget/about.dart';
import 'package:staggered_view/screen/detail/widget/book_button.dart';
import 'package:staggered_view/screen/detail/widget/feature_list.dart';
import 'package:staggered_view/screen/detail/widget/my_header.dart';
import 'package:staggered_view/screen/detail/widget/place_name.dart';

class DetailPage extends StatelessWidget {
  final Place place;
  const DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyHeader(place.imageUrl),
            PlaceName(title: place.title, subtitle: place.subtitle),
            const About(),
            const FeatureList(),
            const BookButton()
          ],
        ),
      ),
    );
  }
}
