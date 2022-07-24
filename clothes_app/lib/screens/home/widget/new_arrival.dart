import 'package:clothes_app/models/clothes.dart';
import 'package:clothes_app/screens/home/widget/clothes_item.dart';
import 'package:flutter/material.dart';
import 'categories_list.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes();
  NewArrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoriesList(title: 'New Arrival'),
        SizedBox(
          height: 280,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ClothesItem(
              clothes: clothesList[index],
            ),
            separatorBuilder: (_, index) => const SizedBox(width: 20),
            itemCount: clothesList.length,
          ),
        ),
      ],
    );
  }
}
