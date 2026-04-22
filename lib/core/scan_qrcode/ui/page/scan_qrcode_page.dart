import 'package:flutter/material.dart';

import '../../../di/di.dart';
import '../../../services/l10n/l10n_service.dart';
import '../../../widgets/navigation/app_bar/side_page_app_bar_component.dart';

class ScanQrcodePage extends StatelessWidget {
  const ScanQrcodePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.scan_qr_code),
      body: const Center(child: Text('Qrcode Scan')),
    );
  }
}
