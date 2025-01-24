import 'dart:async';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/package_detail/data/models/stay_model.dart';
import 'package:travel_app/package_detail/presentation/pages/package_calendar_days.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';
import 'package:travel_app/package_detail/presentation/pages/title_and_description.dart';

class StaysInCities extends StatelessWidget {
  const StaysInCities({
    super.key,
    required this.stays,
  });

  final List<StayModel> stays;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        for (var stay in stays)
          DaysInCity(days: stay.days, city: stay.city),
      ],
    );
  }
}
