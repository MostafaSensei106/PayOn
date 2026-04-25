import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

final class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localKeys;
    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.terms_and_conditions),
    );
  }
}
