import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlaceName extends StatelessWidget {
  final String title;
  final String subtitle;
  const PlaceName({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 20,
        left: 30,
        right: 30,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(36),
            bottomRight: Radius.circular(36),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('assets/icons/star.svg'),
              const Text('4.8k'),
            ],
          ),
        ],
      ),
    );
  }
}
