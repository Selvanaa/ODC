import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Model/Login.dart';
import 'package:flutter_app1/Token/Token.dart';
import 'package:flutter_app1/View/Pages/Home.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/dio_helper.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/end_points.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

TextEditingController emailCT = TextEditingController();
TextEditingController passCT = TextEditingController();
login modelData = login();

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);


void Login(context) {
  var json = {
    "Email": emailCT.text.toString(),
    "Password": passCT.text.toString(),

  };
  DioHelper.postData(url: loginEndPoint, data: json).then((value) {
    if (value.statusCode == 200) {
      modelData = login.fromJson(value.data);
      emit(LoginSuccess());
      Token = modelData!.data!.accessToken.toString();
      if (Token != " " || Token.isNotEmpty || Token != null) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DigitalCenter()));
      }
    }
  });
}
}
