import 'package:equatable/equatable.dart';

class SubjectModel extends Equatable {
  final dynamic department;
  final List<dynamic>? lectures;
  final List<dynamic>? sessions;
  final List<dynamic>? professorsSubjects;
  final List<dynamic>? instructorsGroupsSubjects;
  final List<dynamic>? studentsSubjectsAssignments;
  final String? createdAt;
  final String? updatedAt;
  final String? code;
  final String? title;
  final String? titleAr;
  final int? level;
  final int? credits;
  final String? coverImage;
  final int? portions;
  final bool? enrollmentStatus;
  final int? rolledStudentsCount;
  final String? descriptionAr;
  final String? description;
  final String? prerequisites;
  final String? semester;
  final String? specialRequirements;
  final int? deptId;
  final int? lecturesCount;
  final int? activatedLecturesCount;
  final int? sessionsCount;
  final int? activatedSessionsCount;

  const SubjectModel({
    this.department,
    this.lectures,
    this.sessions,
    this.professorsSubjects,
    this.instructorsGroupsSubjects,
    this.studentsSubjectsAssignments,
    this.createdAt,
    this.updatedAt,
    this.code,
    this.title,
    this.titleAr,
    this.level,
    this.credits,
    this.coverImage,
    this.portions,
    this.enrollmentStatus,
    this.rolledStudentsCount,
    this.descriptionAr,
    this.description,
    this.prerequisites,
    this.semester,
    this.specialRequirements,
    this.deptId,
    this.lecturesCount,
    this.activatedLecturesCount,
    this.sessionsCount,
    this.activatedSessionsCount,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) => SubjectModel(
        department: json['department'] as dynamic,
        lectures: json['lectures'] as List<dynamic>?,
        sessions: json['sessions'] as List<dynamic>?,
        professorsSubjects: json['professorsSubjects'] as List<dynamic>?,
        instructorsGroupsSubjects:
            json['instructorsGroupsSubjects'] as List<dynamic>?,
        studentsSubjectsAssignments:
            json['studentsSubjectsAssignments'] as List<dynamic>?,
        createdAt: json['createdAt'] as String?,
        updatedAt: json['updatedAt'] as String?,
        code: json['code'] as String?,
        title: json['title'] as String?,
        titleAr: json['titleAR'] as String?,
        level: json['level'] as int?,
        credits: json['credits'] as int?,
        coverImage: json['coverImage'] as String?,
        portions: json['portions'] as int?,
        enrollmentStatus: json['enrollmentStatus'] as bool?,
        rolledStudentsCount: json['rolledStudentsCount'] as int?,
        descriptionAr: json['descriptionAR'] as String?,
        description: json['description'] as String?,
        prerequisites: json['prerequisites'] as String?,
        semester: json['semester'] as String?,
        specialRequirements: json['specialRequirements'] as String?,
        deptId: json['deptId'] as int?,
        lecturesCount: json['lecturesCount'] as int?,
        activatedLecturesCount: json['activatedLecturesCount'] as int?,
        sessionsCount: json['sessionsCount'] as int?,
        activatedSessionsCount: json['activatedSessionsCount'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'department': department,
        'lectures': lectures,
        'sessions': sessions,
        'professorsSubjects': professorsSubjects,
        'instructorsGroupsSubjects': instructorsGroupsSubjects,
        'studentsSubjectsAssignments': studentsSubjectsAssignments,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'code': code,
        'title': title,
        'titleAR': titleAr,
        'level': level,
        'credits': credits,
        'coverImage': coverImage,
        'portions': portions,
        'enrollmentStatus': enrollmentStatus,
        'rolledStudentsCount': rolledStudentsCount,
        'descriptionAR': descriptionAr,
        'description': description,
        'prerequisites': prerequisites,
        'semester': semester,
        'specialRequirements': specialRequirements,
        'deptId': deptId,
        'lecturesCount': lecturesCount,
        'activatedLecturesCount': activatedLecturesCount,
        'sessionsCount': sessionsCount,
        'activatedSessionsCount': activatedSessionsCount,
      };

  @override
  List<Object?> get props {
    return [
      department,
      lectures,
      sessions,
      professorsSubjects,
      instructorsGroupsSubjects,
      studentsSubjectsAssignments,
      createdAt,
      updatedAt,
      code,
      title,
      titleAr,
      level,
      credits,
      coverImage,
      portions,
      enrollmentStatus,
      rolledStudentsCount,
      descriptionAr,
      description,
      prerequisites,
      semester,
      specialRequirements,
      deptId,
      lecturesCount,
      activatedLecturesCount,
      sessionsCount,
      activatedSessionsCount,
    ];
  }
}
