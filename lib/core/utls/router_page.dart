import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/views/attendance_view.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/get_started_view.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/views/signin_view.dart';
import 'package:tulaby_clean_code/features/signup/presentation/views/signup_view.dart';
import 'package:tulaby_clean_code/features/splash/presentation/views/splash_view.dart';

abstract class RouterPage {
  static const getStartedView = "/getStartedview";
  static const signInView = "/signInView";
  static const signUpView = "/signUpView";
  static const attendanceView = "/attendanceView";

  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: GetStartedView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
      path: getStartedView,
      builder: (context, state) => const GetStartedView(),
    ),
    GoRoute(
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          transitionDuration: Duration(seconds: 1),
          child: SigninView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
      path: signInView,
      builder: (context, state) => const SigninView(),
    ),
    GoRoute(
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          transitionDuration: Duration(seconds: 1),
          child: SignupView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
      path: signUpView,
      builder: (context, state) => const SignupView(),
    ),
    GoRoute(
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          transitionDuration: Duration(seconds: 1),
          child: AttendanceView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      },
      path: attendanceView,
      builder: (context, state) => const AttendanceView(),
    ),
  ]);
}
