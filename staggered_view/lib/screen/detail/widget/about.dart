import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'The Oki Islands are volcanic in origin, and are the exposed eroded summits of two massive stratovolcanoes dating approximately 5 million years ago to the Tertiary and Quaternary periods.Dōgo to the east is the largest island in area, and has the highest elevation, Mount Daimanji, at 608 metres (1,995 ft) above sea level.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 1,
                ),
              ),
            ),
            child: Text(
              'Read more',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
