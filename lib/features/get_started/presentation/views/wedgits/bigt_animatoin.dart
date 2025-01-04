import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tulaby_clean_code/core/utls/app_assets.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';

class BigtAnimatoin extends StatefulWidget {
  const BigtAnimatoin({super.key});

  @override
  _BigtAnimatoinState createState() => _BigtAnimatoinState();
}

class _BigtAnimatoinState extends State<BigtAnimatoin>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidelogo;
  late Animation<Offset> slidebg;
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
    return Stack(
      children: [
        AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return SlideTransition(
              position: slidelogo,
              child: SvgPicture.asset(
                color: Colors.white30,
                Assets.imagesT, // Ensure this path is correct
                height: 400,
              ),
            );
          },
        ),
        Positioned(
          top: 230,
          left: 60,
          child: AnimatedBuilder(
            animation: animationController,
            builder: (context, child) {
              return SlideTransition(
                position: slidelogo,
                child: Center(
                  child: Text(
                    "TULABY",
                    style: AppStyles.styleRegular60,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void initslideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(4, 0), end: Offset.zero)
            .animate(animationController);
    slidelogo = Tween(begin: const Offset(0, 1), end: Offset.zero)
        .chain(CurveTween(curve: Curves.easeInOutBack))
        .animate(animationController);
    slidebg = Tween(begin: const Offset(0, 8), end: Offset.zero)
        .animate(animationController);
    // Start the animation
    animationController.forward();
    // animationController.forward( ).then((_) => animationController.reverse());
  }
}
