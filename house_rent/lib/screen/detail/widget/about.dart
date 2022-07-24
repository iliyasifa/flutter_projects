import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Get a 2 BHK independent house for rent in Mogappair East for families now, without any brokerage.this home is an ideal place to live in.',
            style:
                Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
