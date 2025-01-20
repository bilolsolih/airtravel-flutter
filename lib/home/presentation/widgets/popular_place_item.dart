import 'package:flutter/material.dart';
import 'package:travel_app/home/data/models/popular_place_model.dart';

class PopularPlaceItem extends StatelessWidget {
  const PopularPlaceItem({
    super.key,
    required this.place,
  });

  final PopularPlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            place.image,
            color: Colors.black.withValues(alpha: 0.28),
            colorBlendMode: BlendMode.darken,
          ),
        ),
        Text(
          place.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

