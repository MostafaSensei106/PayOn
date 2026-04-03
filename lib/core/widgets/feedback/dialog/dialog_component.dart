import 'package:flutter/material.dart';
import '../../../constants/app_config.dart';

class DialogComponent extends StatelessWidget {
  const DialogComponent({
    required this.title,
    required this.content,
    required this.actions,
    super.key,
  });
  final String title;
  final String content;
  final List<Widget> actions;

  @override
  Widget build(final BuildContext context) => AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: actions,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
    ),
  );
}
