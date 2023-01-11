part of 'lectures_cubit.dart';

@immutable
abstract class LecturesState {}

class LecturesInitial extends LecturesState {}
class LecturesSuccess extends LecturesState {}
class LecturesError extends LecturesState {}