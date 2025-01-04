import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';
import 'package:tulaby_clean_code/features/splash/presentation/views/widgets/animation_logo.dart';
import 'package:tulaby_clean_code/features/splash/presentation/views/widgets/tulaby_animation.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 60,
        ),
        Column(
          children: [Center(child: AnimationLogo()), TulabyAnimation()],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(
            "© 2024-2024 by TULABY, Inc.",
            style: AppStyles.styleBold16,
          ),
        )
      ],
    );
  }
}
