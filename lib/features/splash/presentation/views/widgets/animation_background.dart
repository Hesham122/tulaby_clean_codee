import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tulaby_clean_code/core/utls/app_assets.dart';

class AnimationBackground extends StatefulWidget {
  const AnimationBackground({super.key});

  @override
  State<AnimationBackground> createState() => _AnimationLogoState();
}

class _AnimationLogoState extends State<AnimationBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController with a 2-second duration
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 350000),
    );

    _animation = Tween<double>(begin: 1.2, end: 1.4)
        .chain(CurveTween(curve: Curves.easeInOut))
        .animate(_controller);

    _controller.forward().then((_) => _controller.reverse());
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Center(
        child: SvgPicture.asset(
          Assets.imagesIcon,
        ),
      ),
    );
  }

  void navigatebetweenpages() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // GoRouter.of(context).push(RouterPag.homeView);
        // Get.to(() =>const Home(),duration:transitionTime,transition: Transition.fade);
      },
    );
  }
}
