import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';

import '../travel_svg_picture_in_container.dart';

class Tariff extends StatelessWidget {
  const Tariff({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 127,
        height: 96,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: 127,
              height: 83,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: AppColors.mainGreen,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.mainGreen,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        r"1140$",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1,
                        ),
                      ),
                      Text(
                        r"1300$",
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.75),
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 6,
                          decorationColor: Colors.white.withValues(alpha: 0.75),
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Afzalliklari",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.9),
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TariffItemFeature(text: "Transpost Xizmati"),
                  const TariffItemFeature(text: "Nonushta"),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 19,
                width: 65,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  border: Border.all(
                    color: AppColors.mainGreen,
                    width: 1,
                  ),
                ),
                child: const Text(
                  "Ekonom",
                  style: TextStyle(
                    color: AppColors.mainGreen,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class TariffItemFeature extends StatelessWidget {
  const TariffItemFeature({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: AppColors.darkGreen,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: 1),
          const TravelSvgPictureInContainer(
            image: "assets/icons/tick.svg",
            width: 7.06,
            height: 5.65,
            containerWidth: 12,
            containerHeight: 12,
            color: Colors.white,
            containerColor: AppColors.mainGreen,
          ),
          const SizedBox(width: 3),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: AppColors.mainGreen,
              height: 1,
            ),
          ),
          const SizedBox(width: 3),
        ],
      ),
    );
  }
}

