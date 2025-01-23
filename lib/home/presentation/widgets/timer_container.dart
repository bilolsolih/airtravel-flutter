import 'dart:async';

import 'package:flutter/material.dart';

class TimerContainer extends StatelessWidget {
  const TimerContainer({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 37,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA).withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xFFEEEEEE), width: 1),
      ),
      child: Center(
        child: Text(
          time,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
