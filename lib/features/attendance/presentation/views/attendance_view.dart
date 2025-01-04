import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tulaby_clean_code/core/utls/router_page.dart';
import 'package:tulaby_clean_code/features/attendance/presentation/views/widgets/attendance_view_body.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/manager/cubit/signin_cubit.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<SigninCubit, SigninState>(
          listener: (context, state) {
            if (state is SigninSuccessful) {
              GoRouter.of(context).pushReplacement(RouterPage.getStartedView);
            }
          },
          builder: (context, state) {
            return state is SigninLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : AttendanceViewBody();
          },
        ));
  }
}
