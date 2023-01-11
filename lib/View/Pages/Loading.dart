import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
// ignore: depend_on_referenced_packages

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: SplashScreenView(
         navigateRoute: DigitalCenter(),
         duration: 4000,
         text: "Orange Digital Center",
         textType: TextType.TyperAnimatedText,
         textStyle: TextStyle(
           fontSize: 40.0,
           fontWeight: FontWeight.w600,
           color: Colors.deepOrange,
         ),
         backgroundColor: Colors.white,
       )
    );
  }
}
