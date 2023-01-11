import 'dart:js';
import 'dart:js';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Model/Login.dart';
import 'package:flutter_app1/Model/register.dart';
import 'package:flutter_app1/Token/Token.dart';
import 'package:flutter_app1/View/Pages/Login.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/dio_helper.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/end_points.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../Login/login_cubit.dart';

part 'register_state.dart';
TextEditingController emailC=TextEditingController();
TextEditingController passC=TextEditingController();
TextEditingController nameC=TextEditingController();
register ? modelData;

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context)=>BlocProvider.of(context);
   void signUp(context){
  var Json= {
       "email": emailC.text.toString(),
       "password" :passC.text.toString(),
       "name" :nameC.text.toString(),
     };
     DioHelper.postData(url: registerEndPoint, data:Json ).then((value) {
       if(value.statusCode==200){
         modelData = register .fromJson(value.data);
         if(Token!=" "||Token.isNotEmpty||Token!=null){
           Navigator.push( context, MaterialPageRoute(builder: (context) => LoginScreen()));
         }
       }
     });
   }
}
