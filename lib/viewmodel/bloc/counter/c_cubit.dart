import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'c_state.dart';

class CCubit extends Cubit<CState> {
  CCubit() : super(CInitial());
  static CCubit get(context)=> BlocProvider.of(context);
  int count=0;
  void Plus(){
    //print("object");
    count++;
    emit(CPlus());
  }
  void minus(){
    count--;
    emit(CMinus());
  }
}
