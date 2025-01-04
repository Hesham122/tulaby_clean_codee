import 'package:flutter/material.dart';

class BackgroundStack extends StatelessWidget {
  const BackgroundStack({
    super.key,
    this.customcolor,
  });
  final Color? customcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 550,
      decoration: BoxDecoration(
          color: Color(0xff4642FF),
          gradient: LinearGradient(
            colors: [Color(0xff4642FF), customcolor ?? Color(0xff0B0954)],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))),
    );
  }
}
