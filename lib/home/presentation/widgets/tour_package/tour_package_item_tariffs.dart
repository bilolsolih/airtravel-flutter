import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';

import 'tariff_item.dart';

class TourPackageItemTariffs extends StatelessWidget {
  TourPackageItemTariffs({
    super.key,
  });

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text("Tariflar", style: AppStyles.itemSectionTitle),
        SizedBox(
          height: 122,
          child: Scrollbar(
            controller: controller,
            child: ListView(
              controller: controller,
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
        ),
      ],
    );
  }
}
