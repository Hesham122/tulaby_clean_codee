import 'package:flutter/material.dart';
import 'package:tulaby_clean_code/core/utls/style.dart';

class TulabyCopyRight extends StatelessWidget {
  const TulabyCopyRight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        "© 2024-2024 by TULABY, Inc.",
        style: AppStyles.styleBold16,
      ),
    );
  }
}
