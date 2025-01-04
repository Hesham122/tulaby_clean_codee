import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';

class TulabyAnimation extends StatefulWidget {
  const TulabyAnimation({super.key});

  @override
  State<TulabyAnimation> createState() => _AnimationLogoState();
}

class _AnimationLogoState extends State<TulabyAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isAnimationInitialized = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(microseconds: 2500000), () {
      if (mounted) {
        _controller = AnimationController(
          vsync: this,
          duration: const Duration(microseconds: 250000),
        );

        _animation = Tween<double>(begin: 1.2, end: 1.5)
            .chain(CurveTween(curve: Curves.easeInOutCubic))
            .animate(_controller);

        _controller.forward().then((_) => _controller.reverse());

        setState(() {
          _isAnimationInitialized = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isAnimationInitialized) {
      return Container(); // or some placeholder widget
    }
    return ScaleTransition(
      scale: _animation,
      child: Center(
          child: Text(
        "TULABY",
        style: AppStyles.styleRegular50,
      )),
    );
  }
}
