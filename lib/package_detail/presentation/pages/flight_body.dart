import 'package:flutter/material.dart';
import 'package:travel_app/package_detail/data/models/activity_model.dart';

class FlightBody extends StatelessWidget {
  const FlightBody({
    super.key,
    required this.activity,
  });

  final ActivityModel activity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            Text(
              "Qayerdan",
              style: TextStyle(
                color: Color(0xFFC4C4C4),
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
            ),
            Text(
              "Qayerga",
              style: TextStyle(
                color: Color(0xFFC4C4C4),
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            Text(
              activity.field_1,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
            Text(
              activity.field_2,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
