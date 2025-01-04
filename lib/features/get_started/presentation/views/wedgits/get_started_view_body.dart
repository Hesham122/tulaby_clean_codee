import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/custom_widgets/custom_copy_right.dart';
import 'package:tulaby_clean_code/features/get_started/presentation/views/wedgits/get_started_stack.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [GetStartedStack(), TulabyCopyRight()],
          ),
        )
      ],
    );
  }
}
