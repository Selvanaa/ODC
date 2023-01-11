import 'package:bloc/bloc.dart';
import 'package:flutter_app1/Model/lectureM.dart';
import 'package:flutter_app1/Token/Token.dart';
import 'package:flutter_app1/View/Pages/LectureScreen.dart';
import 'package:flutter_app1/viewmodel/bloc/Login/login_cubit.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/dio_helper.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/end_points.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'lectures_state.dart';

class LecturesCubit extends Cubit<LecturesState> {
  LecturesCubit() : super(LecturesInitial());

  static LecturesCubit get(context) => BlocProvider.of(context);

  lec ? modelData;

  void getData() {
    DioHelper.getData(url: lectureEndPoint, token: Token).then((value) {
      if (value.statusCode == 200) {
        modelData = lec.fromJson(value.data);
        emit(LecturesSuccess());
      }
    });
  }
}

