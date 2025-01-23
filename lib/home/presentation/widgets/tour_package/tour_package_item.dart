import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/home/presentation/widgets/tour_package/tour_package_item_button.dart';
import 'package:travel_app/home/presentation/widgets/tour_package/tour_package_item_features.dart';
import 'package:travel_app/home/presentation/widgets/tour_package/tour_package_item_tariffs.dart';
import 'package:travel_app/home/presentation/widgets/tour_package/tour_package_item_title.dart';

import 'tour_package_item_image.dart';

class TourPackageItem extends StatelessWidget {
  const TourPackageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 376 * AppSizes.wratio,
        height: 640 * AppSizes.hratio,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: Colors.white ,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xFF4B4B4B).withValues(alpha: 0.5),
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            TourPackageItemImage(),
            TourPackageItemTitle(),
            TourPackageItemFeatures(),
            TourPackageItemTariffs(),
            TourPackageItemButton(),
          ],
        ),
      ),
    );
  }
}
