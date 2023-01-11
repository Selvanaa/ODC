import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Components/core/Home.dart';
import 'package:flutter_app1/View/Pages/Calender.dart';
import 'package:flutter_app1/View/Pages/FinalScreen.dart';
import 'package:flutter_app1/View/Pages/LectureScreen.dart';
import 'package:flutter_app1/View/Pages/Midterms.dart';
import 'package:flutter_app1/View/Pages/News.dart';
import 'package:flutter_app1/View/Pages/Notes.dart';
import 'package:flutter_app1/View/Pages/Sections.dart';
import 'package:flutter_app1/View/Pages/Setting.dart';
import 'package:flutter_app1/viewmodel/bloc/Home/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../viewmodel/bloc/Settings/settings_cubit.dart';

class DigitalCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    HomeCubit mycubit= HomeCubit.get(context);
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text.rich(
              TextSpan(style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
                children: [
                  TextSpan(text: 'Orange ', style: TextStyle(
                      color: Colors.deepOrange
                  )),
                  TextSpan(text: 'Digital Center',
                      style: TextStyle(
                          color: Colors.black
                      )),

                ],
              ),

            ),

          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: Expanded(
                      child: Row(
                          children: [
                            home('Lecture', Icons.menu_book,context,Lectures()),
                            SizedBox(
                              width: 30,
                            ),
                            home('Sections', Icons.people_alt_outlined,context,Sections()),
                          ]
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: Expanded(
                      child: Row(
                          children: [
                            home('Midterms', Icons.sticky_note_2_sharp,context,Midterms()),
                            SizedBox(
                              width: 30,
                            ),
                            home('Finals', Icons.note_add_outlined,context,Finals())
                          ]
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: Expanded(
                      child: Row(
                          children: [
                            home('Events', Icons.event_note,context,Calendar()),
                            SizedBox(
                              width: 30,
                            ),
                            home('Notes', Icons.speaker_notes,context,Notes()),
                          ]
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          bottomNavigationBar: Card(
            color: Colors.white,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: (
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {  },
                    child: Container(

                      child: Row(
                        children: [
                          Icon(Icons.home_outlined,
                          color: Colors.deepOrange,),
                          SizedBox(
                            width: 3,
                          ),
                          Text('Home',
                          style: TextStyle(
                            color: Colors.deepOrange
                          ),)
                        ],
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> News()));
                    },
                    child: Icon(
                      Icons.wysiwyg_rounded,
                      color: Colors.black,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> Settings()));
                    },
                    child: Icon(
                      Icons.settings_outlined,
                    color: Colors.black,),
                  ),
                ],
              )
              ),
            ),
          ),


        ),
      );
  },
),
    );
  }
}
