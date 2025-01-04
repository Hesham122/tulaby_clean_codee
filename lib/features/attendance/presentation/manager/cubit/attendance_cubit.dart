import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tulaby_clean_code/core/api/api_consumer.dart';
import 'package:tulaby_clean_code/core/api/endpoint.dart';
import 'package:tulaby_clean_code/core/errors/exceptions.dart';
import 'package:tulaby_clean_code/features/attendance/data/model/subject_model/subject_model.dart';
// import 'package:tulaby_clean_code/features/attendance/data/model/subjects_model.dart';

part 'attendance_state.dart';

class AttendanceCubit extends Cubit<AttendanceState> {
  AttendanceCubit(this._apiConsumer) : super(AttendanceSubjectInitial());
  final ApiConsumer _apiConsumer;
  SubjectModel? userSubjects;
  Future<List<SubjectModel>> allsubjects() async {
    try {
      // emit(AttendanceSubjectLoading());

      final response = await _apiConsumer.get(
        Endpoint.allsubjects,
      );
     
      userSubjects = SubjectModel.fromJson(response);
    final  reslist = response["items"] as List;
      return reslist.map((e) {
        final map = e as Map<String, dynamic>;
        // print(response.body);
        return SubjectModel(code: map["code"],description: map["description"],title: map["title"]);
      }).toList();
      // emit(AttendanceSubjectSucceful(subjectsModel: userSubjects));

      // print("jdddddddddddddddkkkkkkkkkkkk${userSubjects?.descriptionAr}");
    } on ServerExceptions catch (e) {
      // emit(AttendanceSubjectFailure(errormsg: e.errorModel.errorMsg));
    }
    throw Exception("Fetch Data Error");
  }
 
}
