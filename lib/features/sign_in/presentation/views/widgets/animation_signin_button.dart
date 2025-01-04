import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_button.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_snack_bar.dart';

import 'package:tulaby_clean_code/features/sign_in/presentation/manager/cubit/signin_cubit.dart';

import '../../../../../core/utls/router_page.dart';

class AnimationSigninButton extends StatefulWidget {
  const AnimationSigninButton({
    super.key,
    this.text,
  });
  final String? text;
  @override
  State<AnimationSigninButton> createState() => _AnimationSigninButtonState();
}

class _AnimationSigninButtonState extends State<AnimationSigninButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidelogo;
  @override
  void initState() {
    super.initState();
    initslideAnimation();
    // navigatebetweenpages();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccessful) {
          shareSnackBar(context, "Success");
          GoRouter.of(context).pushReplacement(RouterPage.attendanceView);
        } else if (state is SigninFailure) {
          shareSnackBar(context, state.errormsg.toString());
        }
      },
      builder: (context, state) {
        return state is SigninLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : AnimatedBuilder(
                animation: animationController,
                builder: (context, _) {
                  return SlideTransition(
                    position: slidelogo,
                    child: CustomButton(
                      backgcolor: ColorsApp.primaryColor,
                      text: widget.text ?? "SIGN IN",
                      onpressed: () {
                        context.read<SigninCubit>().signin();
                        context.read<SigninCubit>().signInEmail.clear();
                        context.read<SigninCubit>().signInPassword.clear();
                      },
                    ),
                  );
                });
      },
    );
  }

  void initslideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(animationController);
    slidelogo = Tween(end: const Offset(0, .5), begin: Offset.zero)
        .animate(animationController);
    // Start the animation
    animationController.forward();
  }
}
