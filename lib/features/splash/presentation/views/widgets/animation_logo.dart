import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tulaby_clean_code/cache/cache_helper.dart';
import 'package:tulaby_clean_code/core/api/endpoint.dart';
import 'package:tulaby_clean_code/core/utls/app_assets.dart';
import 'package:tulaby_clean_code/core/utls/router_page.dart';
import 'package:tulaby_clean_code/features/splash/presentation/views/widgets/animation_background.dart';

class AnimationLogo extends StatefulWidget {
  const AnimationLogo({super.key});

  @override
  State<AnimationLogo> createState() => _AnimationLogoState();
}

class _AnimationLogoState extends State<AnimationLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1)
        .chain(CurveTween(curve: Curves.easeInOutBack))
        .animate(_controller);
    _controller.forward();
    navigatebetweenpages();
    // _checkAuthentication();
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimationBackground(),
        FadeTransition(
          opacity: _fadeAnimation,
          child: Center(
            heightFactor: .82,
            child: SvgPicture.asset(
              Assets.imagesT,
              height: 135,
            ),
          ),
        ),
      ],
    );
  }

  void navigatebetweenpages() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        String? token = CacheHelper().getData(key: ApiKey.token);
        if (token != null && token.isNotEmpty) {
          GoRouter.of(context).pushReplacement(RouterPage.attendanceView);
        } else {
          GoRouter.of(context).pushReplacement(RouterPage.getStartedView);
        }
      },
    );
  }
}
