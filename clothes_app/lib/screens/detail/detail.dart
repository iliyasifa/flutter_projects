import 'package:clothes_app/models/clothes.dart';
import 'package:clothes_app/screens/detail/widget/add_cart.dart';
import 'package:clothes_app/screens/detail/widget/clothes_info.dart';
import 'package:clothes_app/screens/detail/widget/detail_app_bar.dart';
import 'package:clothes_app/screens/detail/widget/size_list.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.clothes}) : super(key: key);
  final Clothes clothes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailAppBar(clothes: clothes),
            ClothesInfo(clothes: clothes),
            const SizeList(),
            AddCart(clothes: clothes),
          ],
        ),
      ),
    );
  }
}
