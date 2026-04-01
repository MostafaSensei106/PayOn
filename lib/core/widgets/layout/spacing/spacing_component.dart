import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpacingComponent extends StatelessWidget {
  final double? width;
  final double? height;

  const SpacingComponent.horizontal(double size, {super.key})
      : width = size,
        height = 0;

  const SpacingComponent.vertical(double size, {super.key})
      : width = 0,
        height = size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w,
      height: height?.h,
    );
  }
}
