import 'package:equatable/equatable.dart';
import 'package:tulaby_clean_code/core/api/endpoint.dart';

class SignInModel extends Equatable {
  final String? id;
  final String? userName;
  final String token;

  const SignInModel({this.id, this.userName, required this.token});

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        id: json[ApiKey.id] as String?,
        userName: json[ApiKey.userName] as String?,
        token: json[ApiKey.token] as String,
      );

  Map<String, dynamic> toJson() => {
        ApiKey.id: id,
        ApiKey.userName: userName,
        ApiKey.token: token,
      };

  @override
  List<Object?> get props => [id, userName, token];
}
