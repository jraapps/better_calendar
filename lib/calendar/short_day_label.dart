import 'package:flutter/material.dart';

class ShortDayLabel extends StatelessWidget {
  final String dayLabel;

  const ShortDayLabel(this.dayLabel);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(
      dayLabel,
      textAlign: TextAlign.center,
      style: TextStyle(color: Color(0xFFA9AEB8)),
    ));
  }
}
