import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'terms_con_state.dart';

class TermsConCubit extends Cubit<TermsConState> {
  TermsConCubit() : super(TermsConInitial());
}
