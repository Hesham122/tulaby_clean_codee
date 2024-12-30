import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_button.dart';
import 'package:tulaby_clean_code/core/utls/router_page.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/row_divider.dart';

class ContentBackground extends StatelessWidget {
  const ContentBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 38,
        ),
        Text(
          "Welcome to TULABY APP!",
          style: AppStyles.styleBold20,
        ),
        Text(
          "Scan, Track, Succeed!",
          style: AppStyles.styleSemiBold16,
        ),
        SizedBox(
          height: 27,
        ),
        // Animationbutton(),
        CustomButton(
          text: "SIGN IN",
          backgcolor: ColorsApp.primaryColor,
          textcolor: Colors.white,
          onpressed: () {
            GoRouter.of(context).push(
              RouterPage.signInView,
            );
          },
        ),
       
        SizedBox(
          height: 10,
        ),
        CustomButton(
          text: "SIGN UP",
          textcolor: ColorsApp.primaryColor,
          backgcolor: Colors.white,
          onpressed: () {
              GoRouter.of(context).push(
              RouterPage.signUpView,
            );
          },
        ),
        RowDivider(),
        CustomButton(
          text: "SKIP FOR NOW",
          textcolor: ColorsApp.primaryColor,
          backgcolor: Colors.white,
          onpressed: () {},
        ),
        SizedBox(
          height: 38,
        ),
      ],
    );
  }
}

class AnimatedCustomButton extends StatefulWidget {
  final String text;
  final Color backgcolor;
  final Color textcolor;
  final VoidCallback onpressed;

  AnimatedCustomButton({
    required this.text,
    required this.backgcolor,
    required this.textcolor,
    required this.onpressed,
  });

  @override
  _AnimatedCustomButtonState createState() => _AnimatedCustomButtonState();
}

class _AnimatedCustomButtonState extends State<AnimatedCustomButton>
    with SingleTickerProviderStateMixin {
  double _opacity = 1.0;
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidelogo;
  @override
  void initState() {
    super.initState();
    initslideAnimation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _opacity = 0.5;
    });

    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        _opacity = 1.0;
      });
      widget.onpressed();
    });
    animationController.forward(from: 0.0); // Restart the animation
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return SlideTransition(
            position: slidelogo,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              decoration: BoxDecoration(
                color: widget.backgcolor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  widget.text,
                  style: TextStyle(color: widget.textcolor),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void initslideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(animationController);
    slidelogo = Tween(begin: const Offset(5, 0), end: Offset.zero)
        .animate(animationController);
    // Start the animation
    animationController.forward();
  }
}
