import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/routes/misc_routes.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/sliver_app_bar_with_waves_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../widgets/my_code_tab_component.dart';
import '../widgets/scan_tab_component.dart';

class ScanQrcodePage extends StatefulWidget {
  const ScanQrcodePage({super.key});

  @override
  State<ScanQrcodePage> createState() => _ScanQrcodePageState();
}

class _ScanQrcodePageState extends State<ScanQrcodePage> {
  bool _isProcessing = false;
  int _selectedIndex = 0;

  void _onDetect(BarcodeCapture capture) {
    if (_isProcessing) return;
    final barcodes = capture.barcodes;
    if (barcodes.isNotEmpty) {
      final code = barcodes.first.rawValue;
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

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBarWithWavesComponent(
                scrollController: scrollController,
                title: l10n.scan_qr_code,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(64.h),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: _buildElegantToggle(theme, l10n),
                  ),
                ),
              ),
              SliverFillRemaining(
                child: Container(
                  color: theme.colorScheme.surface,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: _selectedIndex == 0
                        ? ScanTabComponent(
                            key: const ValueKey('scan_tab'),
                            isProcessing: _isProcessing,
                            onDetect: _onDetect,
                          )
                        : const MyCodeTabComponent(
                            key: ValueKey('my_code_tab'),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildElegantToggle(ThemeData theme, AppLocalizations l10n) {
    return Center(
      child: SegmentedButton<int>(
        segments: [
          ButtonSegment(
            value: 0,
            label: Text(l10n.scan),
            icon: const Icon(Iconsax.scan_barcode_copy),
          ),
          const ButtonSegment(
            value: 1,
            label: Text('My Code'),
            icon: Icon(Iconsax.scan_copy),
          ),
        ],
        selected: {_selectedIndex},
        onSelectionChanged: (newSelection) {
          setState(() => _selectedIndex = newSelection.first);
        },
        showSelectedIcon: false,
        style: SegmentedButton.styleFrom(
          backgroundColor: theme.colorScheme.primaryContainer.withValues(
            alpha: 0.2,
          ),
          selectedBackgroundColor: theme.colorScheme.surface,
          selectedForegroundColor: theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimaryContainer,
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
          ),
        ),
      ),
    );
  }
}
