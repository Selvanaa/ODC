part of 'midterms_cubit.dart';

@immutable
abstract class MidtermsState {}

class MidtermsInitial extends MidtermsState {}
class MidtermsSuccess extends MidtermsState {}
class MidtermsError extends MidtermsState {}
