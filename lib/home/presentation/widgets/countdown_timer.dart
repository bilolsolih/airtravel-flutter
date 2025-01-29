import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_app/home/presentation/widgets/countdown_colon.dart';
import 'package:travel_app/home/presentation/widgets/timer_container.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});


  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  Duration duration = const Duration(hours: 12, minutes: 24, seconds: 30);
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }


  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => updateTime());
  }

  void updateTime() {
    setState(() {
      if (duration.inSeconds > 0) {
        duration = duration - const Duration(seconds: 1);
      } else {
        timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TimerContainer(time: hours),
          CountdownColon(),
          TimerContainer(time: minutes),
          CountdownColon(),
          TimerContainer(time: seconds),
        ],
      ),
    );
  }
}
