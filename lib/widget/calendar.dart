import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(60.0),
        child: TableCalendar(
            focusedDay: DateTime(2024, 2, 18),
            currentDay: DateTime(2024, 2, 18),
            firstDay: DateTime(2024, 2, 1),
            lastDay: DateTime(2024, 2, 29),
            daysOfWeekHeight: 30,
            headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                leftChevronVisible: false,
                rightChevronVisible: false),
            calendarStyle: CalendarStyle(
              weekendTextStyle: TextStyle(color: Colors.red),
              outsideDaysVisible: false,
            )));
  }
}
