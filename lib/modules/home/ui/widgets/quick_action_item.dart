import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';

class QuickActionItem extends StatelessWidget {
  const QuickActionItem({
    required this.icon,
    required this.label,
    required this.onTap,
    super.key,
  });
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(final BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconButtonComponent.filled(
        onPressed: onTap,
        icon: icon,
        foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        padding: 8,
      ),
      SizedBox(height: 4.h),
      Text(label, style: Theme.of(context).textTheme.labelMedium),
    ],
  );
}
