import 'package:flutter/material.dart';

class CurrentWeekWidget extends StatefulWidget {
  @override
  CurrentWeekWidgetState createState() => CurrentWeekWidgetState();
}

class CurrentWeekWidgetState extends State<CurrentWeekWidget> {
  var selectedDayIndex = 0;

  List<String> _getDaysOfTheWeek() {
    List<DateTime> daysOfTheWeek = List<DateTime>();

    // Get the current date
    var now = DateTime.now();
    daysOfTheWeek.add(now);

    // Increment until end of the week
    for (var i = now.weekday + 1; i <= 7; i++) {
      final lastDateAdded = daysOfTheWeek[daysOfTheWeek.length - 1];
      final newDate = lastDateAdded.add(Duration(days: 1));
      daysOfTheWeek.add(newDate);
    }

    // If weekday is past monday get the previous day until monday
    if (now.weekday > 1) {
      for (var i = now.weekday; i > 1; i--) {
        final mostRecentdate = daysOfTheWeek[0];
        final newDate = mostRecentdate.subtract(Duration(days: 1));
        daysOfTheWeek.insert(0, newDate);
      }
    }

    // Convert dates to string
    List<String> daysOfTheWeekStr = List<String>();
    daysOfTheWeek.forEach((date) {
      daysOfTheWeekStr.add(date.day.toString());
    });

    // Change the highlighted date to current date
    var index = 0;
    daysOfTheWeekStr.forEach((dateStr) {
      if (dateStr == now.day.toString()) {
        setState(() {
          selectedDayIndex = index;
        });
      }

      index++;
    });

    return daysOfTheWeekStr;
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
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {
            Future.delayed(const Duration(milliseconds: 200), () {
              setState(() => selectedDayIndex = currentIndex);
            });
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final daysOfTheWeek = _getDaysOfTheWeek();
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < daysOfTheWeek.length; i++) {
      final textColor = (i < 5) ? Colors.black : Color(0xFFA9AEB8);
      list.add(buildDayWidget(daysOfTheWeek[i], textColor, i));
    }

    return Row(children: list);
  }
}
