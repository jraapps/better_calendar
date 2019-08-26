import 'package:better_calendar/calendar/short_day_label.dart';
import 'package:flutter/material.dart';

class WeekShortLabelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ShortDayLabel('M'),
        ShortDayLabel('T'),
        ShortDayLabel('W'),
        ShortDayLabel('T'),
        ShortDayLabel('F'),
        ShortDayLabel('S'),
        ShortDayLabel('S'),
      ],
    );
  }
}