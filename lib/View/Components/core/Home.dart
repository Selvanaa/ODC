import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Setting.dart';

Widget home (String text , IconData i, context , Widget screen){
  return Expanded(
    child: Card(
      elevation: 15,
      child: OutlinedButton(
        onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> screen));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.black12,
                child:
                Icon(
                  i,
                  color: Colors.deepOrange,
                )

            ),
            Text(text,
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
          ],
        ),

      ),
    ),
  );
}