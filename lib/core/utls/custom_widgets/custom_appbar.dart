import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.onpressed});
  final String title;
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onpressed,
          child: Icon(
            Icons.arrow_back,
            size: 40,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: AppStyles.styleBold27,
        )
      ],
    );
  }
}
