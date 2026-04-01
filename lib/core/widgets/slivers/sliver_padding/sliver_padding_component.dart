import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_config.dart';

class SliverPaddingComponent extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget sliver;

  const SliverPaddingComponent({super.key, this.padding, required this.sliver});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding ?? const EdgeInsets.all(AppConfig.padding),
      sliver: sliver,
    );
  }
}
