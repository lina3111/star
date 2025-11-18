import 'main.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp(navigatorKey: navigatorKey));
}
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: TableCalendar(
  firstDay: DateTime.utc(2010, 10, 16),
  lastDay: DateTime.utc(2030, 3, 14),
  focusedDay: DateTime.now(),
)
        // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: const Text('Go Back'),
        // ),
      ),
    );
  }
}

