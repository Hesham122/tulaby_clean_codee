import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_button.dart';
import 'package:tulaby_clean_code/core/utls/router_page.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/row_divider.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/views/widgets/animation_signin_button.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/views/widgets/animation_signin_textfield.dart';

class SigninContent extends StatelessWidget {
  const SigninContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimationSignInTextField(),
          SizedBox(
            height: 12,
          ),
          AnimationSigninButton(),
          SizedBox(
            height: 27,
          ),
          // FadeButton(),
          RowDivider(),
          CustomButton(
            textcolor: ColorsApp.primaryColor,
            text: "SIGN UP",
            onpressed: () {
              GoRouter.of(context).pushReplacement(RouterPage.signUpView);
            },
          ),
        ],
      ),
    );
  }
}
