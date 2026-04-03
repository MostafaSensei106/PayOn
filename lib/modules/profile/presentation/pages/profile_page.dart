import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_component.dart';
import '../../../../l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: CustomScrollView(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        slivers: [
          SidePageSliverAppBarComponent(
            expandedHeight: 400.h,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Hero(
                tag: 'profile',
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Material(
                      type: MaterialType.transparency,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        memCacheHeight: 800,
                        placeholder: (context, url) => Container(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          child: const Icon(
                            Iconsax.profile_circle_copy,
                            size: AppConfig.avatarRadius,
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Iconsax.cloud_cross_copy),
                        filterQuality: FilterQuality.high,
                        imageUrl:
                            'https://media.licdn.com/dms/image/v2/D5603AQHpMGFlYFIAyw/profile-displayphoto-scale_400_400/B56ZnjHIJxHIAg-/0/1760451933899?e=1776902400&v=beta&t=ClsT0ppYA0_8z9ViCSbiS4FG81mCgMkabjoNBHSN1hc',
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.center,
                          colors: [
                            Theme.of(
                              context,
                            ).colorScheme.surface.withValues(alpha: 0.1),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Theme.of(
                              context,
                            ).colorScheme.surface.withValues(alpha: 0.5),
                            Theme.of(
                              context,
                            ).colorScheme.surface.withValues(alpha: 0.8),
                            Theme.of(context).colorScheme.surface,
                          ],
                          stops: const [0.0, 0.5, 0.8, 1.0],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(AppConfig.padding.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mostafa Mahmoud',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'MostafaSensei106@gmail.com',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(height: AppConfig.padding.h),
                  const Divider(),
                  SizedBox(height: AppConfig.padding.h),
                  _buildInfoTile(
                    context,
                    icon: Iconsax.call_copy,
                    label: l10n.phone_number,
                    value: '01014414536',
                  ),
                  _buildInfoTile(
                    context,
                    icon: Iconsax.calendar_1_copy,
                    label: 'Birth Date',
                    value: '2026-04-09',
                  ),
                  _buildInfoTile(
                    context,
                    icon: Iconsax.man_copy,
                    label: 'Gender',
                    value: 'Male',
                  ),
                  _buildInfoTile(
                    context,
                    icon: Iconsax.global_copy,
                    label: 'Nationality',
                    value: 'Egyptian',
                  ),
                  _buildInfoTile(
                    context,
                    icon: Iconsax.location_copy,
                    label: 'Location',
                    value: 'Cairo, Egypt',
                  ),
                  _buildInfoTile(
                    context,
                    icon: Iconsax.code_copy,
                    label: 'Referral Code',
                    value: 'PAYON-2024-XYZ',
                  ),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Iconsax.edit_2_copy),
        label: const Text('Edit Profile'),
        onPressed: () {
          HapticFeedback.mediumImpact();
        },
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildInfoTile(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String value,
  }) => Padding(
      padding: const EdgeInsets.symmetric(vertical: AppConfig.paddingHalf),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppConfig.paddingHalf),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
            ),
            child: Icon(icon, size: AppConfig.iconSize),
          ),
          const SizedBox(width: AppConfig.paddingHalf),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              Text(value, style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ],
      ),
    );
}
