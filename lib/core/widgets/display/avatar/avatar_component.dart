import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_config.dart';

class AvatarComponent extends StatelessWidget {
  final String imageUrl;
  final double? radius;
  final IconData? fallbackIcon;

  const AvatarComponent({
    super.key,
    required this.imageUrl,
    this.radius,
    this.fallbackIcon,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveRadius = radius ?? AppConfig.avatarRadius;
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
          width: 1.5,
        ),
      ),
      child: CircleAvatar(
        radius: effectiveRadius,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        backgroundImage: CachedNetworkImageProvider(
          imageUrl,
          maxWidth: 150,
          maxHeight: 150,
        ),
        onBackgroundImageError: (exception, stackTrace) =>
            fallbackIcon != null ? Icon(fallbackIcon) : null,
        child: null,
      ),
    );
  }
}
