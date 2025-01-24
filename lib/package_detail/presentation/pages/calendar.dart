import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/package_detail/data/models/day_model.dart';
import 'package:travel_app/package_detail/presentation/pages/accommodation_item.dart';
import 'package:travel_app/package_detail/presentation/pages/activity_item.dart';
import 'package:travel_app/package_detail/presentation/pages/package_calendar_days.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';

class Calendar extends StatelessWidget {
  const Calendar({
    super.key,
    required this.viewModel,
  });

  final PackageDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text("Sayohat kundaligi", style: AppStyles.itemSectionTitle),
        Container(
          width: 397 * AppSizes.wratio,
          height: 552,
          padding: EdgeInsets.all(22),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Color(0xFFC4C4C4), blurRadius: 4)],
          ),
          child: Column(
            spacing: 13,
            children: [
              PackageCalendarDays(days: viewModel.package.calendar),
              DottedBorder(
                color: Colors.black,
                dashPattern: [7, 4, 7, 4, 7, 4, 7, 4],
                customPath: (size) => Path()
                  ..moveTo(0, 0)
                  ..lineTo(0, size.height),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    spacing: 31,
                    children: [
                      ActivityItem(activity: viewModel.package.calendar[0].activities[0]),
                      ActivityItem(activity: viewModel.package.calendar[0].activities[0]),
                      ActivityItem(activity: viewModel.package.calendar[0].activities[0]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
