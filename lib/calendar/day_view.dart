import 'package:better_calendar/calendar/hour.dart';
import 'package:flutter/material.dart';

class DayViewWidget extends StatelessWidget {
  final List<String> hourLabels = [
    '12:00',
    '1:00',
    '2:00',
    '3:00',
    '4:00',
    '5:00',
    '6:00',
    '7:00',
    '8:00',
    '9:00',
    '10:00',
    '11:00',
    '12:00',
    '1:00',
    '2:00',
    '3:00',
    '4:00',
    '5:00',
    '6:00',
    '7:00',
    '8:00',
    '9:00',
    '10:00',
    '11:00',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hourLabels.length,
      itemBuilder: (context, index) {
        return HourWidget(hourLabels[index]);
      },
    );
  }
}