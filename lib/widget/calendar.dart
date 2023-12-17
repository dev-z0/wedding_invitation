import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  final DateTime dday = DateTime(2024, 2, 18);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final difference = dday.difference(today).inDays + 1;

    String diffDayText =
        difference > 0 ? '\u2665 결혼식 $difference일 전 \u2665' : '';

    return Container(
        margin: EdgeInsetsDirectional.all(60.0),
        child: Column(
          children: [
            TableCalendar(
                focusedDay: dday,
                currentDay: dday,
                firstDay: DateTime(2024, 2, 1),
                lastDay: DateTime(2024, 2, 29),
                daysOfWeekHeight: 30,
                availableGestures: AvailableGestures.none,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    leftChevronVisible: false,
                    rightChevronVisible: false),
                calendarStyle: CalendarStyle(
                  weekendTextStyle: TextStyle(color: Colors.red),
                  outsideDaysVisible: false,
                )),
            SizedBox(height: 20),
            Text(
              diffDayText,
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
