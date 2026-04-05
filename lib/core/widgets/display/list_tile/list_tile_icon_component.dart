import 'package:flutter/material.dart';

import '../../../constants/app_config.dart';
import 'list_tile_component.dart';

class ListTileIconComponent extends StatelessWidget {
  const ListTileIconComponent({
    required this.title,
    required this.leading,
    this.useinBorderRadius = false,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
  }) : groupType = ListTileGroupType.single;

  const ListTileIconComponent.top({
    required this.title,
    required this.leading,
    this.useinBorderRadius = false,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
  }) : groupType = ListTileGroupType.top;

  const ListTileIconComponent.middle({
    required this.title,
    required this.leading,
    this.useinBorderRadius = false,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
  }) : groupType = ListTileGroupType.middle;

  const ListTileIconComponent.bottom({
    required this.title,
    required this.leading,
    this.useinBorderRadius = false,
    super.key,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.selected,
  }) : groupType = ListTileGroupType.bottom;

  final String title;
  final IconData leading;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool? selected;
  final bool useinBorderRadius;
  final ListTileGroupType groupType;

  @override
  Widget build(BuildContext context) {
    return ListTileComponent(
      title: title,
      leading: Container(
        padding: const EdgeInsets.all(AppConfig.paddingHalf),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(AppConfig.inBorderRadius),
        ),
        child: Icon(
          leading,
          size: AppConfig.iconSize,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
      subtitle: subtitle,
      trailing: trailing,
      onTap: onTap,
      selected: selected,
      useinBorderRadius: useinBorderRadius,
    );
  }
}
