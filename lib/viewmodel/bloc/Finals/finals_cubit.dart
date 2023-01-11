import 'package:bloc/bloc.dart';
import 'package:flutter_app1/Model/exam.dart';
import 'package:flutter_app1/viewmodel/bloc/Login/login_cubit.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/end_points.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../Token/Token.dart';
import '../../database/Network/network/dio_helper.dart';

part 'finals_state.dart';

class FinalsCubit extends Cubit<FinalsState> {
  FinalsCubit() : super(FinalsInitial());
  static FinalsCubit get(context)=> BlocProvider.of(context);
  exam ? modelData;
  void getData(){
    DioHelper.getData(url: examsEndPoint, token: Token).then((value){
      if(value.statusCode==200){
        modelData=exam.fromJson(value.data);
     emit(FinalsSuccess());
      }
    });
  }
}
