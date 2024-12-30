import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/get_started_view_body.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetStartedViewBody(),
    );
  }
}

