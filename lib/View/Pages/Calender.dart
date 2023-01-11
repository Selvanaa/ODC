import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Home.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DigitalCenter()));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.deepOrange,
              size: 30,
            ),
          ),
          title: Text(
            'Midterms',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: SfCalendar(
        view: CalendarView.month,
    monthViewSettings: const MonthViewSettings(
    appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
      ),
      ));
  }
}
