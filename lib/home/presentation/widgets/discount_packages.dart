import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/home/presentation/widgets/countdown_timer.dart';

import 'tour_package/tour_package_item.dart';

class DiscountPackages extends StatelessWidget {
  const DiscountPackages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 720,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF6980A), Color(0xFF3BB756)],
          begin: Alignment.topRight,
          end: Alignment.centerLeft,
        ),
      ),
      child: Column(
        spacing: 20,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              SvgPicture.asset(
                "assets/icons/discount.svg",
                width: 36,
                height: 36,
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shoshiling",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "20% gacha chegirma",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              CountdownTimer(),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(
            height: 670 * AppSizes.hratio,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TourPackageItem(),
                TourPackageItem(),
                TourPackageItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
