import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_copy_right.dart';
import 'package:tulaby_clean_code/features/sign_in/presentation/views/signin_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

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

                    SigninViewBody(),
                    TulabyCopyRight()
                  ],
                ),
          ),
       
        ],
      ),
   
    );
  }
}
