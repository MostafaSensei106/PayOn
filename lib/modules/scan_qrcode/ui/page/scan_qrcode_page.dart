import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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

class ScanQrcodePage extends HookWidget {
  const ScanQrcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final scrollController = useScrollController();
    final theme = Theme.of(context);
    final isProcessing = useState(false);
    final selectedIndex = useState(0);

    void onDetect(BarcodeCapture capture) {
      if (isProcessing.value) return;
      final barcodes = capture.barcodes;
      if (barcodes.isNotEmpty) {
        final code = barcodes.first.rawValue;
        if (code != null && code.isNotEmpty) {
          unawaited(HapticFeedback.vibrate());
          isProcessing.value = true;

          // Push to send money and auto fill the scanned phone/IPA
          unawaited(
            SendMoneyRoute(initialReceiver: code).push<void>(context).then((_) {
              isProcessing.value = false;
            }),
          );
        }
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBarWithWavesComponent(
                scrollController: scrollController,
                title: l10n.scan_qr_code,
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    _buildElegantToggle(theme, l10n, selectedIndex),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: selectedIndex.value == 0
                          ? ScanTabComponent(
                              key: const ValueKey('scan_tab'),
                              isProcessing: isProcessing.value,
                              onDetect: onDetect,
                            )
                          : const MyCodeTabComponent(
                              key: ValueKey('my_code_tab'),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildElegantToggle(
    ThemeData theme,
    AppLocalizations l10n,
    ValueNotifier<int> selectedIndex,
  ) {
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
        selected: {selectedIndex.value},
        onSelectionChanged: (newSelection) {
          selectedIndex.value = newSelection.first;
        },
        showSelectedIcon: false,
        style: SegmentedButton.styleFrom(
          backgroundColor: theme.colorScheme.surface,
          selectedBackgroundColor: theme.colorScheme.primaryContainer,
          selectedForegroundColor: theme.colorScheme.onPrimaryContainer,
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
