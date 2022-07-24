import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FeatureList extends StatefulWidget {
  const FeatureList({Key? key}) : super(key: key);

  @override
  State<FeatureList> createState() => _FeatureListState();
}

class _FeatureListState extends State<FeatureList> {
  final featureList = [
    'mark',
    'compass',
    'hotel',
    'travel',
    'share',
  ];
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentSelect = index;
            });
          },
          child: Container(
            width: 50,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: currentSelect == index
                    ? Theme.of(context).primaryColor
                    : Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  currentSelect == index
                      ? const BoxShadow()
                      : BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        )
                ]),
            child: SvgPicture.asset(
              'assets/icons/${featureList[index]}.svg',
              color: currentSelect == index
                  ? Colors.white
                  : Theme.of(context).primaryColor,
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 20,
        ),
        itemCount: featureList.length,
      ),
    );
  }
}
