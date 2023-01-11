import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../Model/exam.dart';
import '../../../Token/Token.dart';
import '../../database/Network/network/dio_helper.dart';
import '../../database/Network/network/end_points.dart';
import '../Login/login_cubit.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());
  static MidtermsCubit get(context)=> BlocProvider.of(context);
  exam ? modelData;
  void getData(){
    DioHelper.getData(url: examsEndPoint, token: Token).then((value){
      if(value.statusCode==200){
        modelData=exam.fromJson(value.data);
        emit(MidtermsSuccess());
      }
    });
  }
}
