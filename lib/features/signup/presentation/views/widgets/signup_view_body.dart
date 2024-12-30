import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tulaby_clean_code/core/utls/app_assets.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_appbar.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_background_stack.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/signin_signup_backgound.dart';
import 'package:tulaby_clean_code/features/signup/presentation/views/widgets/signup_content.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 800,
        ),
        BackgroundStack(
          customcolor: Color(0xff4D4D6A),
        ),
        // Positioned(top: -45, left: 15, child: BigtAnimatoin()),
        Positioned(
          left: 10,
          top: -140,
          child: SvgPicture.asset(
            color: Colors.white30,
            Assets.imagesT, // Ensure this path is correct
            height: 450,
          ),
        ),
        Positioned(
          top: 147,
          left: 50,
          child: Center(
            child: Text(
              "TULABY",
              style: AppStyles.styleRegular60,
            ),
          ),
        ),
        Positioned(
          top: 250,
          left: 15,
          right: 15,
          child: CustomSignInAndUpBackground(
            content: SignupContent(),
          ),
        ),
        Positioned(
          left: 15,
          top: 30,
          child: CustomAppbar(
            onpressed: () {
              Navigator.pop(context);
            },
            title: "SIGN UP",
          ),
        ),
      ],
    );
  }
}
