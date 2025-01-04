import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:tulaby_clean_code/cache/cache_helper.dart';
import 'package:tulaby_clean_code/core/api/api_consumer.dart';
import 'package:tulaby_clean_code/core/api/endpoint.dart';
import 'package:tulaby_clean_code/core/errors/error_model.dart';
import 'package:tulaby_clean_code/core/errors/exceptions.dart';
import 'package:tulaby_clean_code/features/sign_in/data/models/sign_in_model.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this._apiConsumer) : super(SigninInitial());
  final ApiConsumer _apiConsumer;
  TextEditingController signInEmail = TextEditingController();
  TextEditingController signInPassword = TextEditingController();
  SignInModel? user;

  signin() async {
    try {
      emit(SigninLoading());
      final response = await _apiConsumer.post(Endpoint.signin, data: {
        ApiKey.emailtext: signInEmail.text,
        ApiKey.password: signInPassword.text,
        ApiKey.isPersistent: false,
        ApiKey.signInType: 1,
      });
      user = SignInModel.fromJson(response);
      final tokenDecoder = JwtDecoder.decode(user!.token);
      // print(tokenDecoder[ApiKey.nameid]);
      CacheHelper()
          .saveData(key: ApiKey.nameid, value: tokenDecoder[ApiKey.nameid]);
      CacheHelper().saveData(key: ApiKey.token, value: user!.token);

      print(CacheHelper().getData(key: ApiKey.token));
      emit(SigninSuccessful());
    } on ServerExceptions catch (e) {
      emit(SigninFailure(errormsg: e.errorModel));
    }
  }

  Future<void> logout() async {
    try {
      emit(SigninLoading());

      await CacheHelper().removeData(key: ApiKey.token);

      emit(SigninSuccessful());
    } on ServerExceptions catch (e) {
      emit(SigninFailure(errormsg: e.errorModel));
    }
  }
}
