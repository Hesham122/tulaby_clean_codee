part of 'attendance_cubit.dart';

sealed class AttendanceState extends Equatable {
  const AttendanceState();

  @override
  List<Object> get props => [];
}

final class AttendanceSubjectInitial extends AttendanceState {}

class AttendanceSubjectSucceful extends AttendanceState {
  SubjectModel? subjectsModel;
  AttendanceSubjectSucceful({required this.subjectsModel});
}

final class AttendanceSubjectFailure extends AttendanceState {
  final String errormsg;

  const AttendanceSubjectFailure({required this.errormsg});
}

final class AttendanceSubjectLoading extends AttendanceState {}
