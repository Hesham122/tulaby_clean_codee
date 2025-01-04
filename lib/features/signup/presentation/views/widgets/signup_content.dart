import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tulaby_clean_code/core/utls/app_assets.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_button.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_textfield.dart';
import 'package:tulaby_clean_code/core/utls/router_page.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/row_divider.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/manager/cubit/signin_cubit.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/views/widgets/animation_signin_button.dart';
import 'package:tulaby_clean_code/features/signup/presentation/views/widgets/custom_tab_bar.dart';

class SignupContent extends StatelessWidget {
  const SignupContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTabBar(),
          SizedBox(
            height: 15,
          ),
          CustomTextfield(
            textEditingController: context.read<SigninCubit>().signInPassword,
            atIcon: Icon(
              size: 27,
              Icons.alternate_email,
              color: ColorsApp.secondaryColor,
            ),
            title: "Username",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextfield(
            textEditingController: context.read<SigninCubit>().signInPassword,
            imgpic: Assets.imagesVector,
            title: "Email",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextfield(
            textEditingController: context.read<SigninCubit>().signInPassword,
            imgpic: Assets.imagesVector1,
            title: "Password",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextfield(
            textEditingController: context.read<SigninCubit>().signInPassword,
            imgpic: Assets.imagesVector1,
            title: "Repeat Password",
          ),
          SizedBox(
            height: 12,
          ),
          AnimationSigninButton(
            text: "SIGN UP",
          ),
          SizedBox(
            height: 27,
          ),
          RowDivider(),
          CustomButton(
            textcolor: ColorsApp.primaryColor,
            text: "SIGN IN",
            onpressed: () {
              GoRouter.of(context).pushReplacement(
                RouterPage.signInView,
              );
            },
          ),
        ],
      ),
    );
  }
}
