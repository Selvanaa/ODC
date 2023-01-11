import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          title: Text(
            'FAQ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            color: Colors.deepOrange,

            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListTile(
                  title: Text(
                    'Q1: How many countries Orange Digital center is in?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ),
                ),
              ],
            )

          )
        ),
      ) );
  }
}
