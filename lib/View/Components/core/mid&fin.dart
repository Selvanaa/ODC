
import 'package:flutter/material.dart';


 Widget mid (String text) {
   return Card(
     elevation: 10,
     child: Container(
       width: double.infinity,
       height: 120,
       decoration: BoxDecoration(
           shape: BoxShape.rectangle,
           borderRadius: BorderRadius.circular(10),
           color: Colors.white
       ),
       child: (
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       text,
                       style: TextStyle(fontSize: 20,
                           fontWeight: FontWeight.bold),
                     ),
                     Row(
                       children: [
                         Icon(
                             Icons.alarm_rounded
                         ),
                         SizedBox(
                           width: 2,
                         ),
                         Text(
                             '2hr'
                         ),
                       ],
                     ),

                   ],
                 ),
               ),
               SizedBox(
                 height: 5,
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       'Exam Date',
                       style: TextStyle(fontSize: 13,
                           color: Colors.black26),
                     ),
                     Text(
                       'Start Time',
                       style: TextStyle(fontSize: 13,
                           color: Colors.black26),
                     ),
                     Text(
                       'End Time',
                       style: TextStyle(fontSize: 13,
                           color: Colors.black26),
                     ),


                   ],
                 ),
               ),
               SizedBox(
                 height: 1,
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         Icon(
                             Icons.calendar_today_rounded
                         ),
                         Text(
                           '2022-08-18',
                           style: TextStyle(fontSize: 13,
                               color: Colors.black),
                         ),
                       ],
                     ),
                     Row(
                       children: [
                         Icon(
                           Icons.watch_later,
                           color: Colors.greenAccent,
                         ),
                         Text(
                           '12:00pm',
                           style: TextStyle(fontSize: 13,
                               color: Colors.black),
                         ),
                       ],
                     ),
                     Row(
                       children: [
                         Icon(
                           Icons.watch_later,
                           color: Colors.redAccent[100],
                         ),
                         Text(
                           '2:00pm',
                           style: TextStyle(fontSize: 13,
                               color: Colors.black),
                         ),
                       ],
                     ),


                   ],
                 ),
               ),
             ],
           )

       ),
     ),
   );

 }