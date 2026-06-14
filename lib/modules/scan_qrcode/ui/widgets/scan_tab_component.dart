import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../core/constants/app_config.dart';

class ScanTabComponent extends StatelessWidget {
  const ScanTabComponent({
    required this.isProcessing,
    required this.onDetect,
    super.key,
  });

  final bool isProcessing;
  final void Function(BarcodeCapture) onDetect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(AppConfig.padding),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
            child: SizedBox(
              height: 0.45.sh,
              width: 1.sw,
              child: MobileScanner(
                onDetect: onDetect,
                overlayBuilder: (context, constraints) {
                  return Container(
                    width: constraints.maxWidth * 0.7,
                    height: constraints.maxWidth * 0.7,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(
                        AppConfig.outBorderRadius,
                      ),
                    ),
                    child: Center(
                      child: isProcessing
                          ? const CircularProgressIndicator()
                          : const Icon(
                              Iconsax.scan_barcode_copy,
                              color: Colors.white54,
                              size: 64,
                            ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
