import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'our_partner_state.dart';

class OurPartnerCubit extends Cubit<OurPartnerState> {
  OurPartnerCubit() : super(OurPartnerInitial());
}
