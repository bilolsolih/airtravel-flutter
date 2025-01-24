import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/package_detail/data/models/activity_model.dart';
import 'package:travel_app/package_detail/presentation/pages/activity_item_handle.dart';
import 'package:travel_app/package_detail/presentation/pages/flight_body.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({
    super.key,
    required this.activity,
  });

  final ActivityModel activity;

  final Map<String, String> images = const {
    "flight": "assets/icons/plane.svg",
    "housing": "assets/icons/hotel.svg",
    "visit": "assets/icons/activity.svg",
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 340 * AppSizes.wratio,
        child: Stack(
          alignment: Alignment.centerRight,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 284 * AppSizes.wratio,
              height: 124 * AppSizes.hratio,
              padding: EdgeInsets.fromLTRB(52, 22, 16, 22),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withValues(alpha: 0.25),
                      blurRadius: 4)
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        activity.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        activity.time,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  if (activity.type == "flight")
                    FlightBody(activity: activity)
                  else if (activity.type == "housing")
                    FlightBody(activity: activity)
                  else if (activity.type == "visit")
                    FlightBody(activity: activity),
                ],
              ),
            ),
            Positioned(
                left: -25,
                child: ActivityItemHandle(
                    image:
                        images[activity.type] ?? "assets/icons/activity.svg")),
          ],
        ),
      ),
    );
  }
}
