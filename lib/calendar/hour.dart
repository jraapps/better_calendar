import 'package:flutter/material.dart';

class HourWidget extends StatelessWidget {
  final String hourLabel;

  const HourWidget(this.hourLabel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Text(
              hourLabel,
              style: TextStyle(color: Color(0xFFDCDBE0)),
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              color: const Color(0xFFF4F4F7),
            ),
          )
        ],
      ),
    );
  }
}