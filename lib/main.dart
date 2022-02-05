import 'dart:ffi';

import 'package:calendar/calendar_widget.dart';
import 'package:calendar/evnet_editing_page.dart';
import 'package:calendar/menu.dart';
import 'package:calendar/provider/event_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => EventProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SKKU CALENDAR',
          theme: ThemeData(
            primaryColor: Colors.green,
          ),
          home: const MyHomePage(title: 'SKKU CALENDAR'),
        ),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            widget.title,
            style: TextStyle(color: Color(0xff1B5E20)),
          ),
          backgroundColor: Color(0xfff4f5f1),
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color(0xff1B5E20))),
      body: CalendarWidget(),
      drawer: Menu(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff1B5E20),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EventEditingPage()),
        ),
      ),
    );
  }
}
