import 'package:flutter/material.dart';

shareSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    action: SnackBarAction(label: "close", onPressed: () {}),
    duration: const Duration(seconds: 5),
  ));
}
