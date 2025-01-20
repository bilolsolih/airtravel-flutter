import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';

import 'tariff_item.dart';

class TourPackageItemTariffs extends StatelessWidget {
  const TourPackageItemTariffs({
    super.key,
    required this.controller,
  });

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Tariflar",
          style: AppStyles.itemSectionTitle,
        ),
        SizedBox(
          height: 96,
          child: ListView(
            controller: controller,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const [
              Tariff(),
              SizedBox(width: 10),
              Tariff(),
              SizedBox(width: 10),
              Tariff(),
            ],
          ),
        ),
      ],
    );
  }
}
