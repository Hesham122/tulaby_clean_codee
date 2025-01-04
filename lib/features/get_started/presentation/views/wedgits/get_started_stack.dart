import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_background_stack.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/bigt_animatoin.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/content_background.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/signin_signup_backgound.dart';

class GetStartedStack extends StatelessWidget {
  const GetStartedStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: 700,
        ),
        BackgroundStack(),
        Positioned(top: -45, left: 15, child: BigtAnimatoin()),
        Positioned(
          top: 300,
          left: 15,
          right: 15,
          child: CustomSignInAndUpBackground(
            content: ContentBackground(),
          ),
        )
      ],
    );
  }
}
