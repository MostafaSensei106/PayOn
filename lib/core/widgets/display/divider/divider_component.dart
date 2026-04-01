import 'package:flutter/material.dart';

class DividerComponent extends StatelessWidget {
  final double? indent;
  final double? endIndent;

  const DividerComponent({super.key, this.indent, this.endIndent});

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: indent,
      endIndent: endIndent,
      color: Theme.of(context).colorScheme.outlineVariant,
    );
  }
}
