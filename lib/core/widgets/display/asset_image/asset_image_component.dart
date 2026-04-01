import 'package:flutter/material.dart';

class AssetImageComponent extends StatelessWidget {
  final String assetName;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const AssetImageComponent({
    super.key,
    required this.assetName,
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetName,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
