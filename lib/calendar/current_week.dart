import 'package:flutter/material.dart';

class CurrentWeekWidget extends StatefulWidget {
  @override
  CurrentWeekWidgetState createState() => CurrentWeekWidgetState();
}

class CurrentWeekWidgetState extends State<CurrentWeekWidget> {
  var selectedDayIndex = 0;

  List<String> _getDaysOfTheWeek() {
    return ['26', '27', '28', '29', '30', '31', '1'];
  }

  Widget buildDayWidget(
      String dayOfTheWeek, Color textColor, int currentIndex) {
    final isSelected = _getDaysOfTheWeek()[selectedDayIndex] == dayOfTheWeek;

    final decoration = (isSelected)
        ? BoxDecoration(
          color: Color(0xFFFF8291),
          shape: BoxShape.circle,
          )
        : null;

    textColor = (isSelected) ? Colors.white : textColor;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() => selectedDayIndex = currentIndex);
        },
        child: Container(
          decoration: decoration,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              dayOfTheWeek,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final daysOfTheWeek = _getDaysOfTheWeek();
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < daysOfTheWeek.length; i++) {
      final textColor = (i < 5) ? Colors.black : Color(0xFFA9AEB8);
      list.add(buildDayWidget(
          daysOfTheWeek[i], textColor, i));
    }

    return Row(children: list);
  }
}