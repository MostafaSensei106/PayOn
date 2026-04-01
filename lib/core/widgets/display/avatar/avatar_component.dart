import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_constants.dart';

class AvatarComponent extends StatelessWidget {
  final String? imageUrl;
  final double? radius;
  final IconData? fallbackIcon;

  const AvatarComponent({
    super.key,
    this.imageUrl,
    this.radius,
    this.fallbackIcon,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveRadius = radius ?? AppConstants.avatarRadius;
    return CircleAvatar(
      radius: effectiveRadius,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      backgroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
      child: imageUrl == null
          ? Icon(
              fallbackIcon ?? Icons.person,
              size: effectiveRadius,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            )
          : null,
    );
  }
}
