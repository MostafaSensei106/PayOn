import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:payon/core/constants/app_config.dart';

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
    final effectiveRadius = radius ?? AppConfig.avatarRadius;
    return CircleAvatar(
      radius: effectiveRadius,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      backgroundImage: imageUrl != null
          ? CachedNetworkImageProvider(imageUrl!)
          : null as ImageProvider?,
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
