import 'package:flutter/material.dart';
import 'package:payon/core/widgets/display/section_header/section_header_component.dart';

class SliverSectionHeaderComponent extends StatelessWidget {
  final String title;
  final VoidCallback? onActionPressed;
  final String? actionLabel;

  const SliverSectionHeaderComponent({
    super.key,
    required this.title,
    this.onActionPressed,
    this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SectionHeaderComponent(
        title: title,
        onActionPressed: onActionPressed,
        actionLabel: actionLabel,
      ),
    );
  }
}
