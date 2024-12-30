import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_button.dart';

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
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return SlideTransition(
            position: slidelogo,
            child: CustomButton(
              backgcolor: ColorsApp.primaryColor,
              text: widget.text ?? "SIGN IN",
              onpressed: () {},
            ),
          );
        });
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
