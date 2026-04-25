import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../constants/app_config.dart';

final class SvgComponent extends StatelessWidget {
  const SvgComponent({
    required this.path,
    this.width = 350,
    this.height = 350,
    this.fit = BoxFit.contain,
    this.useInBorderRadius = false,
    super.key,
  });

  final String path;
  final double? width;
  final double? height;
  final BoxFit fit;
  final bool useInBorderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: useInBorderRadius
            ? BorderRadius.circular(AppConfig.inBorderRadius)
            : BorderRadius.circular(AppConfig.outBorderRadius),
      ),
      child: SvgPicture.asset(
        path,
        fit: fit,
        errorBuilder: (context, error, stackTrace) => Container(
          color: Theme.of(context).colorScheme.errorContainer,
          child: Icon(
            Iconsax.warning_2_copy,
            color: Theme.of(context).colorScheme.error,
          ),
        ),
      ),
    );
  }
}
