import 'package:tulaby_clean_code/core/api/endpoint.dart';

class ErrorModel {
  final int status;
  final String errorMsg;
  final String errorMsgAr;

  const ErrorModel(
      {required this.errorMsgAr, required this.status, required this.errorMsg});

  factory ErrorModel.fromjson(Map<String, dynamic> jsonData) {
    return ErrorModel(
        errorMsgAr: jsonData[ApiKey.errorMsgAr],
        status: jsonData[ApiKey.status],
        errorMsg: jsonData[ApiKey.errorMsg]);
  }
}
