import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothes_app/models/clothes.dart';
import 'package:clothes_app/screens/detail/widget/color_picker.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatefulWidget {
  final Clothes clothes;

  const DetailAppBar({Key? key, required this.clothes}) : super(key: key);

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  final List<Color> colors = [
    const Color(0xFFE6CFC6),
    const Color(0xFFEEDFB5),
    const Color(0xFFCAE2C5),
    const Color(0xFFBAE6EE),
  ];

  final CarouselController _controller = CarouselController();
  int _currentPage = 0;
  int _currentColor = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
              height: 500,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                });
              }),
          items: widget.clothes.detailUrl
              .map((e) => Builder(
                    builder: (context) => Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e),
                          fit: BoxFit.fitHeight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ))
              .toList(),
        ),
        Positioned(
          bottom: 30,
          left: 180,
          child: Row(
            children: widget.clothes.detailUrl
                .asMap()
                .entries
                .map((entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(
                            _currentPage == entry.key ? 0.9 : 0.4,
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 30,
          child: Container(
            height: 175,
            width: 50,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    _currentColor = index;
                  });
                },
                child: ColorPicker(
                  outerBorder: _currentColor == index,
                  color: colors[index],
                ),
              ),
              separatorBuilder: (_, index) => const SizedBox(height: 3),
              itemCount: colors.length,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            right: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
