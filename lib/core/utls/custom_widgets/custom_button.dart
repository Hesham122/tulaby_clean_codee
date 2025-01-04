import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.backgcolor,
      this.textcolor,
      required this.text,
      required this.onpressed});
  final Color? backgcolor;
  final Color? textcolor;
  final String text;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      width: 304,
      child: ElevatedButton(
        onPressed: onpressed,
        style: ButtonStyle(
          side: WidgetStatePropertyAll(
              BorderSide(width: 2, color: ColorsApp.primaryColor)),
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          backgroundColor: WidgetStatePropertyAll(backgcolor ?? Colors.white),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
        ),
        child: Text(
          text,
          style:
              AppStyles.styleBold16.copyWith(color: textcolor ?? Colors.white),
        ),
      ),
    );
  }
}
