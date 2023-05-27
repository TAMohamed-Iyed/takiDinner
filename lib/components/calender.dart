import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime selectedDay = DateTime.now();

  void _onDaySelect(DateTime day, DateTime focusedDay) {
    setState(() {
      selectedDay = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    return TableCalendar(
      startingDayOfWeek: StartingDayOfWeek.monday,
      headerVisible: false,
      selectedDayPredicate: (day) => isSameDay(day, selectedDay),
      onDaySelected: _onDaySelect,
      firstDay: today,
      focusedDay: selectedDay,
      lastDay: DateTime.utc(today.year, today.month, today.day + 6),
    );
  }
}
