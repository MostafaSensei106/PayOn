import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

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
            title: l10n.contact_us,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                CardComponent(
                  child: Column(
                    children: [
                      ListTileIconComponent.top(
                        leading: Icons.location_on_outlined,
                        title: 'Office Address',
                        subtitle: l10n.contact_us_address,
                        onTap: () {},
                      ),
                      ListTileIconComponent.middle(
                        leading: Icons.phone_outlined,
                        title: 'Phone Number',
                        subtitle: l10n.contact_us_phone,
                        onTap: () {},
                      ),
                      ListTileIconComponent.middle(
                        leading: Icons.email_outlined,
                        title: 'Email Support',
                        subtitle: l10n.contact_us_email,
                        onTap: () {},
                      ),
                      ListTileIconComponent.bottom(
                        leading: Icons.access_time_outlined,
                        title: 'Business Hours',
                        subtitle: l10n.contact_us_hours,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Connect with us',
                  style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _buildSocialCard(
                        l10n.social_linkedin,
                        Icons.link,
                        colorScheme,
                        textTheme,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildSocialCard(
                        l10n.social_twitter,
                        Icons.alternate_email,
                        colorScheme,
                        textTheme,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildSocialCard(
                        l10n.social_github,
                        Icons.code,
                        colorScheme,
                        textTheme,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Text(
                  'Send us a message',
                  style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const CardComponent(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Your Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Your Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextField(
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: 'How can we help?',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('Send Message'),
                ),
                const SizedBox(height: 40),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialCard(String label, IconData icon, ColorScheme colorScheme, TextTheme textTheme) {
    return CardComponent(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          Icon(icon, color: colorScheme.primary),
          const SizedBox(height: 8),
          Text(label, style: textTheme.labelMedium),
        ],
      ),
    );
  }
}