import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tulaby_clean_code/core/utls/app_assets.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_textfield.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/manager/cubit/signin_cubit.dart';

class AnimationSignInTextField extends StatefulWidget {
  const AnimationSignInTextField({
    super.key,
  });

  @override
  State<AnimationSignInTextField> createState() =>
      _AnimationSignInTextFieldState();
}

class _AnimationSignInTextFieldState extends State<AnimationSignInTextField>
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
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return SlideTransition(
            position: slidelogo,
            child: Column(
              children: [
                SizedBox(
                  height: 38,
                ),
                CustomTextfield(
                  imgpic: Assets.imagesVector,
                  title: "Email",
                  textEditingController:
                      context.read<SigninCubit>().signInEmail,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                  imgpic: Assets.imagesVector1,
                  title: "Password",
                  textEditingController:
                      context.read<SigninCubit>().signInPassword,
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    " I forgot my password ! ",
                    style: AppStyles.styleBold12,
                  ),
                ),
              ],
            ),
          );
        });
  }

  void initslideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
            .animate(animationController);
    slidelogo = Tween(begin: const Offset(0, .5), end: Offset.zero)
        .animate(animationController);
    // Start the animation
    animationController.forward();
  }
}
