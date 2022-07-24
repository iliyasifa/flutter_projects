import 'package:flutter/material.dart';
import 'package:house_rent/modal/houses.dart';

class ContentIntro extends StatelessWidget {
  final Houses houses;
  const ContentIntro({Key? key, required this.houses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            houses.name,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            houses.address,
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '50000 sqft',
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          ),
          const SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$4455 ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Per Month',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
