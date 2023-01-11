import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'digital_center_state.dart';

class DigitalCenterCubit extends Cubit<DigitalCenterState> {
  DigitalCenterCubit() : super(DigitalCenterInitial());
  static DigitalCenterCubit get(context)=> BlocProvider.of(context);
}
