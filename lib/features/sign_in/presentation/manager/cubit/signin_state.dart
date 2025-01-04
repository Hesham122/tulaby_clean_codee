part of 'signin_cubit.dart';

sealed class SigninState extends Equatable {
  const SigninState();

  @override
  List<Object> get props => [];
}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninFailure extends SigninState {
  final ErrorModel errormsg;

  const SigninFailure({required this.errormsg});
}

final class SigninSuccessful extends SigninState {
  // final List<Incodemodel> signinsucc;
  // const SigninSuccessful(this.signinsucc);
}
