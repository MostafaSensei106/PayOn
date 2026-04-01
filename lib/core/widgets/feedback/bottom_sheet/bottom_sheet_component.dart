import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_config.dart';

class BottomSheetComponent extends StatelessWidget {
  final Widget child;
  final String? title;

  const BottomSheetComponent({super.key, required this.child, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConfig.padding),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(AppConfig.outBorderRadius),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const Divider(),
          ],
          child,
        ],
      ),
    );
  }
}
