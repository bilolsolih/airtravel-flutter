import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/package_detail/data/models/feature_model.dart';
import 'package:travel_app/package_detail/presentation/pages/package_calendar_days.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';
import 'package:travel_app/package_detail/presentation/pages/stays_in_cities.dart';
import 'package:travel_app/package_detail/presentation/pages/title_and_description.dart';

class Features extends StatelessWidget {
  const Features({
    super.key,
    required this.features,
  });

  final List<FeatureModel> features;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Sayohat tarkibi", style: AppStyles.itemSectionTitle),
        Wrap(
          spacing: 6,
          runSpacing: 12,
          children: [
            for (var feature in features)
              TourPackageFeature(text: feature.title),
          ],
        ),
      ],
    );
  }
}
