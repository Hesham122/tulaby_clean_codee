import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/colors.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';

class RowDivider extends StatelessWidget {
  const RowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            indent: 20,
            endIndent: 2,
            color: ColorsApp.primaryColor,
            height: 54,
            thickness: 2, // You can adjust the thickness as needed
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text("OR",style: AppStyles.styleBold16,),
        ),
        Expanded(
          child: Divider(
            indent: 2,
            endIndent: 20,
            color: ColorsApp.primaryColor,
            height: 54,
            thickness: 2, // You can adjust the thickness as needed
          ),
        ),
      ],
    );
  }
}
