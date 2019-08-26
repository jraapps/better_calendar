import 'package:better_calendar/calendar/current_week.dart';
import 'package:better_calendar/calendar/day_view.dart';
import 'package:better_calendar/calendar/week_short_label.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('August'),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.notifications),
          tooltip: "Notifications",
          color: Color(0xFFFF8291),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            color: Color(0xFFFF8291),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            tooltip: "New Event",
            color: Color(0xFFFF8291),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                WeekShortLabelWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: CurrentWeekWidget(),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: DayViewWidget(),
                ))
              ],
            )),
      ),
    );
  }
}