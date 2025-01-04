import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/manager/cubit/signin_cubit.dart';

class AttendanceAppBar extends StatelessWidget {
  const AttendanceAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Attendace ",
            style:
                AppStyles.styleBold27.copyWith(color: ColorsApp.primaryColor),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: IconButton(
              onPressed: () {
                context.read<SigninCubit>().logout();
              },
              icon: Icon(
                size: 30,
                Icons.logout,
                color: ColorsApp.primaryColor,
              )),
        )
      ],
    );
  }
}
