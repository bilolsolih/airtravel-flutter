import 'package:flutter/material.dart';
import 'package:travel_app/package_detail/data/models/day_model.dart';
import 'package:travel_app/package_detail/presentation/pages/calendar_day.dart';

class PackageCalendarDays extends StatelessWidget {
  PackageCalendarDays({
    super.key,
    required this.days,
  });

  final List<DayModel> days;
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        child: Scrollbar(
          interactive: true,
          controller: controller,
          child: ListView.separated(
            controller: controller,
            scrollDirection: Axis.horizontal,
            itemCount: days.length,
            itemBuilder: (context, index) => Align(
              alignment: Alignment.topCenter,
              child: CalendarDay(day: days[index].day),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 9),
          ),
        ),
      ),
    );
  }
}
