import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Better Calendar',
        theme: ThemeData(primaryColor: Colors.white),
        home: MainScreen());
  }
}

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
                Expanded(child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: DayViewWidget(),
                ))
              ],
            )),
      ),
    );
  }
}

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

class CurrentWeekWidget extends StatelessWidget {
  List<String> _getDaysOfTheWeek() {
    return ['26', '27', '28', '29', '30', '31', '1'];
  }

  @override
  Widget build(BuildContext context) {
    final daysOfTheWeek = _getDaysOfTheWeek();
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < daysOfTheWeek.length; i++) {
      final textColor = (i < 5) ? Colors.black : Color(0xFFA9AEB8);

      list.add(Expanded(
        child: Text(
          daysOfTheWeek[i],
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor, fontSize: 15),
        ),
      ));
    }

    return Row(children: list);
  }
}

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
