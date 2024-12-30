import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/content_background.dart';

class CustomSignInAndUpBackground extends StatelessWidget {
  const CustomSignInAndUpBackground({
    super.key,
    required this.content,
  });
  final Widget content;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Container(
      // height: 484,
      width: width*.95,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black26, // Shadow color with opacity
          blurRadius: 1.5, // The blur radius of the shadow
          offset: Offset(0, 4), // The position of the shadow
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: content,
    );
  }
}
