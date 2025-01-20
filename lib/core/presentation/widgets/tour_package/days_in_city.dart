import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:travel_app/core/core.dart';

class DaysInCity extends StatelessWidget {
  const DaysInCity({
    super.key,
    required this.days,
    required this.city,
  });

  final int days;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: Border.all(
          color: AppColors.mainGreen,
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 0.5),
          Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.mainGreen,
            ),
            child: SvgPicture.asset(
              "assets/icons/calendar.svg",
              width: 11.38,
              height: 13,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 1),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                days.toString(),
                style: const TextStyle(
                  color: AppColors.mainGreen,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
              const Text(
                "KUN",
                style: TextStyle(
                  color: AppColors.mainGreen,
                  fontSize: 6,
                  fontWeight: FontWeight.w600,
                  height: 1,
                ),
              ),
            ],
          ),
          const SizedBox(width: 3),
          Text(
            city,
            style: const TextStyle(
              color: AppColors.mainGreen,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 1,
            ),
          ),
          const SizedBox(width: 3),
        ],
      ),
    );
  }
}