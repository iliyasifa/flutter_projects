import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent/modal/houses.dart';

class DetailAppBar extends StatelessWidget {
  final Houses houses;
  const DetailAppBar({Key? key, required this.houses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            houses.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 20,
                      width: 20,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/arrow.svg'),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/icons/mark.svg'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
