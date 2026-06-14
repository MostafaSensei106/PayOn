import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/routes/misc_routes.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../../../core/widgets/navigation/tab_bar/tab_bar_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/sliver_app_bar_with_waves_component.dart';
import '../../../profile/logic/cubit/user_profile_cubit.dart';
import '../../../profile/logic/cubit/user_profile_state.dart';

class ScanQrcodePage extends StatefulWidget {
  const ScanQrcodePage({super.key});

  @override
  State<ScanQrcodePage> createState() => _ScanQrcodePageState();
}

class _ScanQrcodePageState extends State<ScanQrcodePage> {
  bool _isProcessing = false;

  void _onDetect(BarcodeCapture capture) {
    if (_isProcessing) return;
    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isNotEmpty) {
      final String? code = barcodes.first.rawValue;
      if (code != null && code.isNotEmpty) {
        unawaited(HapticFeedback.vibrate());
        setState(() {
          _isProcessing = true;
        });

        // Push to send money and auto fill the scanned phone/IPA
        unawaited(
          SendMoneyRoute(initialReceiver: code).push<void>(context).then((_) {
            if (mounted) {
              setState(() {
                _isProcessing = false;
              });
            }
          }),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final scrollController = ScrollController();
    final theme = Theme.of(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBarWithWavesComponent(
              scrollController: scrollController,
              title: l10n.scan_qr_code,
              expandedHeight: 220.h,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(46.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surface,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(AppConfig.outBorderRadius),
                    ),
                  ),
                  child: TabBarComponent(
                    tabs: [
                      Tab(
                        icon: const Icon(Iconsax.scan_barcode_copy),
                        text: l10n.scan,
                      ),
                      const Tab(icon: Icon(Iconsax.scan_copy), text: 'My Code'),
                    ],
                  ),
                ),
              ),
            ),
          ],
          body: Container(
            color: theme.colorScheme.surface,
            child: TabBarView(
              children: [
                // Scan Tab
                Padding(
                  padding: const EdgeInsets.all(AppConfig.padding),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          AppConfig.outBorderRadius,
                        ),
                        child: MobileScanner(
                          onDetect: _onDetect,
                          overlayBuilder: (context, constraints) {
                            return Stack(
                              children: [
                                // Semi-transparent overlay around the scan area
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withValues(alpha: 0.5),
                                  ),
                                ),
                                Center(
                                  child: Container(
                                    width: constraints.maxWidth * 0.7,
                                    height: constraints.maxWidth * 0.7,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: theme.colorScheme.primary,
                                        width: 4,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        AppConfig.inBorderRadius,
                                      ),
                                    ),
                                    child: Center(
                                      child: _isProcessing
                                          ? const CircularProgressIndicator()
                                          : const Icon(
                                              Iconsax.scan_barcode_copy,
                                              color: Colors.white54,
                                              size: 64,
                                            ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 40.h,
                                  left: 0,
                                  right: 0,
                                  child: Center(
                                    child: CardComponent(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 8.0,
                                        ),
                                        child: Text(
                                          'Align QR code within the frame',
                                          style: theme.textTheme.bodyMedium
                                              ?.copyWith(
                                                color: theme
                                                    .colorScheme
                                                    .onSurfaceVariant,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // Generate QR Tab
                Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(AppConfig.padding),
                    child: BlocBuilder<UserProfileCubit, UserProfileState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          success: (data) {
                            final qrData = data.phone;
                            return CardComponent(
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  AppConfig.padding * 1.5,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Receive Money',
                                      style: theme.textTheme.headlineSmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: theme.colorScheme.primary,
                                          ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'Show this code to receive payments instantly',
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.bodyMedium
                                          ?.copyWith(
                                            color: theme
                                                .colorScheme
                                                .onSurfaceVariant,
                                          ),
                                    ),
                                    SizedBox(height: 32.h),
                                    Container(
                                      padding: const EdgeInsets.all(
                                        AppConfig.padding,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                          AppConfig.inBorderRadius,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withValues(
                                              alpha: 0.05,
                                            ),
                                            blurRadius: 10,
                                            offset: const Offset(0, 5),
                                          ),
                                        ],
                                      ),
                                      child: QrImageView(
                                        data: qrData,
                                        version: QrVersions.auto,
                                        size: 220.0,
                                        eyeStyle: QrEyeStyle(
                                          eyeShape: QrEyeShape.square,
                                          color: theme.colorScheme.primary,
                                        ),
                                        dataModuleStyle: QrDataModuleStyle(
                                          dataModuleShape:
                                              QrDataModuleShape.square,
                                          color: theme.colorScheme.primary,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 32.h),
                                    Text(
                                      data.name,
                                      style: theme.textTheme.titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            theme.colorScheme.primaryContainer,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        qrData,
                                        style: theme.textTheme.titleMedium
                                            ?.copyWith(
                                              color: theme
                                                  .colorScheme
                                                  .onPrimaryContainer,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          orElse: () => const CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
