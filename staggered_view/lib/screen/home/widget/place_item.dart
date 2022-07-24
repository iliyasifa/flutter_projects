import 'package:flutter/material.dart';
import 'package:staggered_view/model/place.dart';
import 'package:staggered_view/screen/detail/detail.dart';

class PlaceItem extends StatelessWidget {
  final Place place;
  const PlaceItem(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(
              place: place,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: place.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(place.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: place.height,
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withAlpha(0),
                  Colors.black.withAlpha(0),
                  Colors.black.withAlpha(0),
                  Colors.black12,
                  Colors.black87,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    place.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    place.subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
