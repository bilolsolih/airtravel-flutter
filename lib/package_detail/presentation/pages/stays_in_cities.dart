
import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/package_detail/data/models/stay_model.dart';

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
