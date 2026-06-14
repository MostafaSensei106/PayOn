import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/routes/misc_routes.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../../profile/logic/cubit/user_profile_cubit.dart';

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
        setState(() {
          _isProcessing = true;
        });
        
        // Push to send money and auto fill the scanned phone/IPA
        unawaited(SendMoneyRoute(initialReceiver: code).push<void>(context).then((_) {
          if (mounted) {
            setState(() {
              _isProcessing = false;
            });
          }
        }));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: SidePageAppBarComponent(
          title: l10n.scan_qr_code,
          bottom: TabBar(
            tabs: [
              Tab(text: l10n.scan),
              const Tab(text: 'My Code'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Scan Tab
            Stack(
              children: [
                MobileScanner(
                  onDetect: _onDetect,
                  overlayBuilder: (context, constraints) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5),
                          width: 4,
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.15,
                        vertical: constraints.maxHeight * 0.25,
                      ),
                    );
                  },
                ),
                if (_isProcessing)
                  const Center(child: CircularProgressIndicator()),
              ],
            ),
            
            // Generate QR Tab
            Center(
              child: BlocBuilder<UserProfileCubit, UserProfileState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (data) {
                      final qrData = data.phone; // or whatever data we want to encode for receiving money
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(AppConfig.padding),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(AppConfig.inBorderRadius),
                            ),
                            child: QrImageView(
                              data: qrData,
                              version: QrVersions.auto,
                              size: 200.0,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          Text(
                            'Scan this code to pay to',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            data.name,
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            qrData,
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      );
                    },
                    orElse: () => const CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
