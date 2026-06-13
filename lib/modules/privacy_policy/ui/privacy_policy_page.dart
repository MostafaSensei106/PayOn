import 'package:flutter/material.dart';

import '../../../core/extensions/extensions.dart';
import '../../../core/widgets/display/card/card_component.dart';
import '../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;
    final scrollController = ScrollController();

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SidePageSliverAppBarWithWavesComponent(
            scrollController: scrollController,
            title: l10n.privacy_policy,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  l10n.pp_last_updated,
                  textAlign: TextAlign.center,
                  style: textTheme.labelMedium?.copyWith(
                    color: colorScheme.outline,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 24),
                _buildCardSection(l10n.pp_section1_title, l10n.pp_section1_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section2_title, l10n.pp_section2_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section3_title, l10n.pp_section3_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section4_title, l10n.pp_section4_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section5_title, l10n.pp_section5_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section6_title, l10n.pp_section6_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section7_title, l10n.pp_section7_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section8_title, l10n.pp_section8_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section9_title, l10n.pp_section9_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section10_title, l10n.pp_section10_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section11_title, l10n.pp_section11_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section12_title, l10n.pp_section12_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section13_title, l10n.pp_section13_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section14_title, l10n.pp_section14_content, textTheme, colorScheme),
                _buildCardSection(l10n.pp_section15_title, l10n.pp_section15_content, textTheme, colorScheme),
                const SizedBox(height: 24),
                Center(
                  child: Text(
                    '© 2026 PayOn Inc. All rights reserved.',
                    style: textTheme.labelSmall?.copyWith(color: colorScheme.outline),
                  ),
                ),
                const SizedBox(height: 20),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardSection(String title, String content, TextTheme textTheme, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: CardComponent(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: textTheme.bodyMedium?.copyWith(
                height: 1.5,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}