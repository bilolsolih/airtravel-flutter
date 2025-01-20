import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';

import '../../../../home/presentation/widgets/travel_svg_picture_in_container.dart';

class TourPackageFeature extends StatelessWidget {
  const TourPackageFeature({
    super.key,
    required this.text,
    this.height = 19,
  });

  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: AppColors.mainGreen, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 1),
          TravelSvgPictureInContainer(
            image: "assets/icons/tick.svg",
            width: 9.41,
            height: 7.06,
            containerWidth: 16,
            containerHeight: 15,
            color: Colors.white,
            containerColor: AppColors.mainGreen,
          ),
          SizedBox(width: 3),
          Text(text, style: AppStyles.featureTitle),
          SizedBox(width: 3),
        ],
      ),
    );
  }
}
