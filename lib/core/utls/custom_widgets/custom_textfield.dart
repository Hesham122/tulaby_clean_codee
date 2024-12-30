import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tulaby_clean_code/core/utls/app_assets.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key, required this.title, this.imgpic, this.atIcon});
  final String title;
  final String? imgpic;
  final Icon? atIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: title,
          hintStyle: AppStyles.styleMeduim16,
          prefixIcon: atIcon ??
              Padding(
                padding: const EdgeInsets.only(top: 3, left: 10, right: 7),
                child: SvgPicture.asset(imgpic ?? Assets.imagesVector1),
              ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Color(0xff9998D1), width: 3)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Color(0xff9998D1), width: 3))),
    );
  }
}
