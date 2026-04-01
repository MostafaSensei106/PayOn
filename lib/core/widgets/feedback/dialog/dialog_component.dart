import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_constants.dart';

class DialogComponent extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget> actions;

  const DialogComponent({
    super.key,
    required this.title,
    required this.content,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: actions,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.dialogBorderRadius),
      ),
    );
  }
}
