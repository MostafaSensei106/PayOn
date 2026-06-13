import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';

class CommonQuestionsPage extends StatelessWidget {
  const CommonQuestionsPage({super.key});

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
            title: l10n.common_questions,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildCategoryHeader(l10n.faq_cat_general, Icons.help_outline, colorScheme, textTheme),
                _buildFaqCard(l10n.faq_q1_title, l10n.faq_q1_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q6_title, l10n.faq_q6_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q10_title, l10n.faq_q10_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q13_title, l10n.faq_q13_answer, textTheme, colorScheme),
                const SizedBox(height: 24),
                _buildCategoryHeader(l10n.faq_cat_security, Icons.security, colorScheme, textTheme),
                _buildFaqCard(l10n.faq_q2_title, l10n.faq_q2_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q3_title, l10n.faq_q3_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q7_title, l10n.faq_q7_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q11_title, l10n.faq_q11_answer, textTheme, colorScheme),
                const SizedBox(height: 24),
                _buildCategoryHeader(l10n.faq_cat_transactions, Icons.swap_horiz, colorScheme, textTheme),
                _buildFaqCard(l10n.faq_q4_title, l10n.faq_q4_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q5_title, l10n.faq_q5_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q8_title, l10n.faq_q8_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q9_title, l10n.faq_q9_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q12_title, l10n.faq_q12_answer, textTheme, colorScheme),
                _buildFaqCard(l10n.faq_q15_title, l10n.faq_q15_answer, textTheme, colorScheme),
                const SizedBox(height: 32),
                CardComponent(
                  color: colorScheme.primaryContainer.withValues(alpha: 0.2),
                  child: Column(
                    children: [
                      Text(
                        'Still have questions?',
                        style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "If you can't find the answer you're looking for, please contact our 24/7 support team.",
                        textAlign: TextAlign.center,
                        style: textTheme.bodySmall?.copyWith(color: colorScheme.onSurfaceVariant),
                      ),
                      const SizedBox(height: 16),
                      FilledButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.mail_outline),
                        label: Text(l10n.contact_us),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryHeader(String title, IconData icon, ColorScheme colorScheme, TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 12),
      child: Row(
        children: [
          Icon(icon, size: 20, color: colorScheme.primary),
          const SizedBox(width: 8),
          Text(
            title,
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFaqCard(String question, String answer, TextTheme textTheme, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: CardComponent(
        padding: EdgeInsets.zero,
        child: ExpansionTile(
          title: Text(
            question,
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                answer,
                style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
              ),
            ),
          ],
        ),
      ),
    );
  }
}