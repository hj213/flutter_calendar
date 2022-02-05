import 'package:calendar/model/event_data_source.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calendar/provider/event_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:calendar/event_viewing_page.dart';

class TasksWidget extends StatefulWidget {
  @override
  _TasksWidgetState createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<EventProvider>(context);
    final selectedEvents = provider.eventsOfSelectedDate;

    if (selectedEvents.isEmpty) {
      return Center(
        child: Text(
          '일정을 추가하세요',
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      );
    }
    return SfCalendarTheme(
        data: SfCalendarThemeData(),
        child: SfCalendar(
          view: CalendarView.day,
          scheduleViewSettings: ScheduleViewSettings(
            monthHeaderSettings: MonthHeaderSettings(
                monthFormat: 'MMMM, yyyy',
                height: 60,
                textAlign: TextAlign.center,
                backgroundColor: Colors.transparent,
                monthTextStyle: TextStyle(
                    color: Color(0xff1B5E20),
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
            hideEmptyScheduleWeek: true,
            appointmentItemHeight: 70,
            appointmentTextStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xfff4f5f1)),
          ),
          dataSource: EventDataSource(provider.events),
          // onTap: (details) {
          //   if (details.appointments == null) return;

          //   final event = details.appointments!.first;

          //   Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => EventViewingPage(event: event),
          //   ));
          // },
        ));
  }
}
