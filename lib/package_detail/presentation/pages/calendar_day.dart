import 'package:flutter/material.dart';

class CalendarDay extends StatelessWidget {
  const CalendarDay({
    super.key,
    required this.day,
  });

  final int day;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            "$day Kun",
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
    );
  }
}
