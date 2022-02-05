// import 'package:calendar/provider/event_provider.dart';
// import 'package:calendar/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class EventViewingPage extends StatelessWidget {
//   final Event event;

//   const EventViewingPage({
//     Key? key,
//     required this.event,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           leading: CloseButton(),
//           backgroundColor: Color(0xfff4f5f1),
//           elevation: 0.0,
//           actions: buildViewingActions(context, event),
//         ),
//         body: ListView(
//           padding: EdgeInsets.all(32),
//           children: <Widget>[
//             buildDateTime(evnet),
//             SizedBox(height: 32),
//             Text(
//               event.title,
//               style: TextStyle(fontsize: 24, fontWeight: FontWeight.w500),
//             ),
//             const SizedBox(height: 24),
//             Text(
//               event.description,
//               style: TextStyle(color: Colors.white, fontSize: 18),
//             )
//           ],
//         ),
//       );

//   Widget buildDateTime(Event event){
//     return Column(
//       children: [
//         buildDate(event.isAllDay ? 'All-day' : 'From', event.from)
//         if (!event.isAllDay) buildDate('To', event.to), 
//       ],
//     );
//   }
// }
