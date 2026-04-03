import 'package:flutter/material.dart';
import '../../../constants/app_config.dart';

class ListTileComponent extends StatelessWidget {
  const ListTileComponent({
    required this.title,
    super.key,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onTap,
  });
  final Widget title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(final BuildContext context) => ListTile(
    title: title,
    subtitle: subtitle,
    leading: leading,
    trailing: trailing,
    onTap: onTap,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppConfig.inBorderRadius),
    ),
  );
}
