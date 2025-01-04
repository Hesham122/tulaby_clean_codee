// import 'package:equatable/equatable.dart';

// class Signinmodel extends Equatable {
//   final String? nameid;
//   final String? uniqueName;
//   final String? arabicName;
//   final String? academicEmail;
//   final String? code;
//   final String? role;
//   final int? nbf;
//   final int? exp;
//   final int? iat;
//   final String? iss;

//   const Signinmodel({
//     this.nameid,
//     this.uniqueName,
//     this.arabicName,
//     this.academicEmail,
//     this.code,
//     this.role,
//     this.nbf,
//     this.exp,
//     this.iat,
//     this.iss,
//   });

//   factory Signinmodel.fromJson(Map<String, dynamic> json) => Signinmodel(
//         nameid: json['nameid'] as String?,
//         uniqueName: json['unique_name'] as String?,
//         arabicName: json['ArabicName'] as String?,
//         academicEmail: json['AcademicEmail'] as String?,
//         code: json['Code'] as String?,
//         role: json['Role'] as String?,
//         nbf: json['nbf'] as int?,
//         exp: json['exp'] as int?,
//         iat: json['iat'] as int?,
//         iss: json['iss'] as String?,
//       );

//   Map<String, dynamic> toJson() => {
//         'nameid': nameid,
//         'unique_name': uniqueName,
//         'ArabicName': arabicName,
//         'AcademicEmail': academicEmail,
//         'Code': code,
//         'Role': role,
//         'nbf': nbf,
//         'exp': exp,
//         'iat': iat,
//         'iss': iss,
//       };

//   @override
//   List<Object?> get props {
//     return [
//       nameid,
//       uniqueName,
//       arabicName,
//       academicEmail,
//       code,
//       role,
//       nbf,
//       exp,
//       iat,
//       iss,
//     ];
//   }
// }
