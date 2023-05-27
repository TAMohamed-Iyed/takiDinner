import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({super.key});

  @override
  State<CountDownTimer> createState() => _CountDownTimer();
}

class _CountDownTimer extends State<CountDownTimer> {
  Duration duration = const Duration();
  Timer? timer;
  int reservationDeadline = 12; // must be in PM

  @override
  void initState() {
    super.initState();

    if (DateTime.now().hour < reservationDeadline) {
      startTimer();
    }
  }

  void tick() {
    setState(() {
      final seconds = duration.inSeconds - 1;

      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void startTimer() {
    DateTime now = DateTime.now();

    duration = Duration(
        hours: reservationDeadline - now.hour,
        minutes: 60 - now.minute,
        seconds: 60 - now.second);
    timer = Timer.periodic(const Duration(seconds: 1), (_) => tick());
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: buildTime());
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: hours, header: 'HOURS'),
        const SizedBox(width: 8),
        buildTimeCard(time: minutes, header: 'MINUTES'),
        const SizedBox(width: 8),
        buildTimeCard(time: seconds, header: 'SECONDS'),
      ],
    );
  }

  Widget buildTimeCard({required String time, required String header}) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                  )
                ],
              ),
              child: Text(
                time,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF64bce0),
                    fontSize: 72),
              )),
          const SizedBox(
            height: 24,
          ),
          Text(header, style: const TextStyle(fontWeight: FontWeight.w700))
        ],
      );
}
