
import 'package:flutter/material.dart';
import 'package:travel_app/package_detail/data/models/day_model.dart';


class PackageCalendarDays extends StatelessWidget {
  PackageCalendarDays({
    super.key,
    required this.days,
  });

  final List<DayModel> days;
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Scrollbar(
        controller: controller,
        child: ListView.separated(
          controller: controller,
          scrollDirection: Axis.horizontal,
          itemCount: days.length,
          itemBuilder: (context, index) => Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 63,
              height: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF808080).withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${days[index].day} Kun",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  Text(
                    "14okt",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 9),
        ),
      ),
    );
  }
}
