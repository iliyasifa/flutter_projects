import 'package:flutter/material.dart';
import '/model/travel.dart';

class FeaturedWidget extends StatelessWidget {
  final _list = Travel.generateMostPopular();

  FeaturedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var travel = _list[index];
        return SizedBox(
          width: 120,
          child: Image.asset(
            travel.url,
            fit: BoxFit.cover,
          ),
        );
      },
      separatorBuilder: (_, index) => const SizedBox(width: 10),
      itemCount: _list.length,
    );
  }
}
