import 'package:flutter/material.dart';
import 'package:travel_blogs/model/travel.dart';
import 'package:travel_blogs/screens/detail_screen/detail_screen.dart';

class TravelBlog extends StatelessWidget {
  final List<Travel> _list = Travel.generateTravelBlog();
  final PageController _pageCtrl = PageController(
    viewportFraction: 0.9,
  );

  TravelBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageCtrl,
      itemCount: _list.length,
      itemBuilder: (context, index) {
        var travel = _list[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return DetailPage(travel: travel);
                },
              ),
            );
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 20, bottom: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    travel.url,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Positioned(
                bottom: 80,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        travel.location,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        travel.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 30,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[400],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
