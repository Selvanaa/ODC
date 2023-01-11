import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/AddNote.dart';
import 'package:flutter_app1/View/Pages/Home.dart';

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DigitalCenter()));
            },
            icon: Icon(
                Icons.arrow_back_ios,
            color:  Colors.black,),
          ),
            title:  Text(
              'Notes',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
            ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(

            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'There\'s No Data To Show',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                ],
              ),

              Align(
                alignment: Alignment.bottomRight,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {

              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> AddNote()));
              },
                      icon: CircleAvatar(
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
