import 'package:calendar/calendar_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color(0xfff4f5f1),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('asset/IMG_9251.jpg'),
                backgroundColor: Colors.white,
              ),
              accountName:
                  Text('HYOJUNG', style: TextStyle(color: Colors.white)),
              accountEmail: Text('hj213@g.skku.edu',
                  style: TextStyle(color: Colors.white)),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Color(0xff1B5E20),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0))),
            ),
            Container(
                child: ListTile(
              title: Text(
                'Month',
                style: TextStyle(fontSize: 15, color: Color(0xff1B5E20)),
              ),
              onTap: () {
                CalendarWidget();
              },
            )),
          ],
        ));
  }
}
