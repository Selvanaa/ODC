part of 'finals_cubit.dart';

@immutable
abstract class FinalsState {}

class FinalsInitial extends FinalsState {}
class FinalsSuccess extends FinalsState {}
class FinalsError extends FinalsState {}
