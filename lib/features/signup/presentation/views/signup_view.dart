import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_copy_right.dart';
import 'package:tulaby_clean_code/features/signup/presentation/views/widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignupViewBody(),
              Expanded(
                child: SizedBox(
                  height: 20,
                ),
              ),
              TulabyCopyRight()
            ],
          ),
        )
      ],
    ));
  }
}
