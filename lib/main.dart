import 'package:flutter/material.dart';
import 'package:flutter_app1/Model/Login.dart';
import 'package:flutter_app1/View/Pages/AddNote.dart';
import 'package:flutter_app1/View/Pages/Calender.dart';
import 'package:flutter_app1/View/Pages/FAQ.dart';
import 'package:flutter_app1/View/Pages/FinalScreen.dart';
import 'package:flutter_app1/View/Pages/Home.dart';
import 'package:flutter_app1/View/Pages/LectureScreen.dart';
import 'package:flutter_app1/View/Pages/Loading.dart';
import 'package:flutter_app1/View/Pages/Login.dart';
import 'package:flutter_app1/View/Pages/Midterms.dart';
import 'package:flutter_app1/View/Pages/News.dart';
import 'package:flutter_app1/View/Pages/Notes.dart';
import 'package:flutter_app1/View/Pages/OurPartner.dart';
import 'package:flutter_app1/View/Pages/Register.dart';
import 'package:flutter_app1/View/Pages/Sections.dart';
import 'package:flutter_app1/View/Pages/Setting.dart';
import 'package:flutter_app1/View/Pages/Support.dart';
import 'package:flutter_app1/View/Pages/newDigitalCenter.dart';
import 'package:flutter_app1/viewmodel/bloc/Home/home_cubit.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/dio_helper.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/end_points.dart';


void main()async {
 await DioHelper.init();
  runApp( MyApp(),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DigitalCenter(),
    );
  }
}
