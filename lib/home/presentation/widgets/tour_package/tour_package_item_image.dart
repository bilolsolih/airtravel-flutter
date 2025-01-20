import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';

import '../travel_svg_picture_in_container.dart';
import 'text_in_container.dart';

class TourPackageItemImage extends StatelessWidget {
  const TourPackageItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: const AssetImage("assets/images/offers/offers_1.jpg"),
            height: 222 * AppSizes.hratio,
            fit: BoxFit.cover,
            color: Colors.black.withValues(alpha: 0.2),
            colorBlendMode: BlendMode.darken,
          ),
        ),
        const Positioned(
          top: 24,
          left: 20,
          right: 23,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextInContainer(text: "14 kun"),
              TravelSvgPictureInContainer(
                image: "assets/icons/heart.svg",
                containerWidth: 28,
                containerHeight: 28,
                width: 12.66,
                height: 12,
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 5,
              children: [
                SvgPicture.asset("assets/icons/flight.svg"),
                const TextInContainer(text: "14 Okt"),
                SvgPicture.asset("assets/icons/landing.svg"),
                const TextInContainer(text: "27 Okt"),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ],
    );
  }
}
