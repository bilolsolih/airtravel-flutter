import 'package:flutter/material.dart';
import 'package:travel_app/package_detail/data/models/activity_model.dart';

class AccommodationBody extends StatelessWidget {
  const AccommodationBody({
    super.key,
    required this.activity,
  });

  final ActivityModel activity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image(image: act),
      ],
    );
  }
}
