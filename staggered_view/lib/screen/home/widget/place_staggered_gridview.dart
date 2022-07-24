import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_view/model/place.dart';
import 'package:staggered_view/screen/home/widget/place_item.dart';

class PlaceStaggeredGridView extends StatelessWidget {
  final placeList = Place.generatePlaces();
  PlaceStaggeredGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: MasonryGridView.count(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        itemCount: placeList.length,
        crossAxisCount: 2,
        itemBuilder: (context, index) => PlaceItem(placeList[index]),
      ),

      //  ......  staggered package 0.4.0 .....

      // child: StaggeredGridView.countBuilder(
      //     shrinkWrap: true,
      //     physics: ScrollPhysics(),
      //     crossAxisSpacing: 16,
      //     mainAxisSpacing: 16,
      //     itemCount: placeList.length,
      //     crossAxisCount: 4,
      //     itemBuilder: (context, index) => PlaceItem(placeList[index]),
      //     staggeredTileBuilder: (_) => StaggeredTile.fit(2)),
    );
  }
}
