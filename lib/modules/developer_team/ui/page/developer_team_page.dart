import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';

class DeveloperTeamPage extends StatelessWidget {
  const DeveloperTeamPage({super.key});

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
            title: l10n.developer_team,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  l10n.dev_team_mission,
                  textAlign: TextAlign.center,
                  style: textTheme.bodyLarge?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: colorScheme.onSurfaceVariant,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 32),
                _buildDevMember(
                  l10n.dev_member1_name,
                  l10n.dev_member1_role,
                  l10n.dev_member1_bio,
                  textTheme,
                  colorScheme,
                ),
                _buildDevMember(
                  l10n.dev_member2_name,
                  l10n.dev_member2_role,
                  l10n.dev_member2_bio,
                  textTheme,
                  colorScheme,
                ),
                _buildDevMember(
                  l10n.dev_member3_name,
                  l10n.dev_member3_role,
                  l10n.dev_member3_bio,
                  textTheme,
                  colorScheme,
                ),
                _buildDevMember(
                  l10n.dev_member4_name,
                  l10n.dev_member4_role,
                  l10n.dev_member4_bio,
                  textTheme,
                  colorScheme,
                ),
                const SizedBox(height: 24),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDevMember(
    String name,
    String role,
    String bio,
    TextTheme textTheme,
    ColorScheme colorScheme,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: CardComponent(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const AvatarComponent(imageUrl: ''),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        role,
                        style: textTheme.labelLarge?.copyWith(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              bio,
              style: textTheme.bodyMedium?.copyWith(
                height: 1.5,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                _buildSocialIcon(Icons.link, colorScheme),
                const SizedBox(width: 12),
                _buildSocialIcon(Icons.code, colorScheme),
                const SizedBox(width: 12),
                _buildSocialIcon(Icons.alternate_email, colorScheme),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, ColorScheme colorScheme) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 18, color: colorScheme.onSurfaceVariant),
    );
  }
}
