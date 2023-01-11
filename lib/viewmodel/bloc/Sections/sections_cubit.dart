import 'package:bloc/bloc.dart';
import 'package:flutter_app1/Model/section.dart';
import 'package:flutter_app1/Token/Token.dart';
import 'package:flutter_app1/View/Pages/Sections.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/dio_helper.dart';
import 'package:flutter_app1/viewmodel/database/Network/network/end_points.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());
  static SectionsCubit get(context)=> BlocProvider.of(context);
   sect ? modelData;
   void getData(){
     DioHelper.getData(url: sectionEndPoint, token: Token).then((value){
       if(value.statusCode==200){
         modelData=sect.fromJson(value.data);
         emit(SectionsSuccess());
       }
     });
   }
}
