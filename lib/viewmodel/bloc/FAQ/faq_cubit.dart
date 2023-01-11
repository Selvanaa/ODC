import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());
}
