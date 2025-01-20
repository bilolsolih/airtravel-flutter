import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/home/data/models/popular_place_model.dart';
import 'package:travel_app/home/presentation/widgets/popular_place_item.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    super.key,
    required this.places,
  });

  final List<PopularPlaceModel> places;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: AppSizes.padding24w),
          child: const Text(
            "Mashxur Joylar",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 52,
          child: ListView.separated(
            itemCount: places.length,
            padding: EdgeInsets.symmetric(horizontal: AppSizes.padding24w),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) => PopularPlaceItem(place: places[index]),
          ),
        ),
      ],
    );
  }
}
