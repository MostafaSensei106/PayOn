import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';

class ProfilePage extends HookWidget {
  const ProfilePage({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final scrollController = useScrollController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: SidePageAppBarComponent(title: l10n.profile),
      body: SingleChildScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConfig.padding.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kToolbarHeight + AppConfig.padding + 35.h),
              _buildProfileHeaderCard(context),
              _buildSectionHeader(context, 'Account Details'),
              _buildSettingsGroup(
                context,
                children: [
                  ListTileIconComponent.top(
                    title: l10n.phone_number,
                    subtitle: '+20 10 1441 4536',
                    leading: Iconsax.call_copy,
                    onTap: () {},
                  ),
                  ListTileIconComponent.middle(
                    title: 'Birth Date',
                    subtitle: '2026-04-09',
                    leading: Iconsax.calendar_1_copy,
                    onTap: () {},
                  ),
                  ListTileIconComponent.bottom(
                    title: 'Location',
                    subtitle: 'Cairo, Egypt',
                    leading: Iconsax.location_copy,
                    onTap: () {},
                  ),
                ],
              ),

              _buildSectionHeader(context, 'Security & Privacy'),
              _buildSettingsGroup(
                context,
                children: [
                  ListTileIconComponent.top(
                    title: 'Change Password',
                    subtitle: 'Update your login credentials',
                    leading: Iconsax.key_copy,
                    onTap: () {
                      unawaited(HapticFeedback.mediumImpact());
                    },
                  ),
                  ListTileIconComponent.bottom(
                    title: 'Sign Out',
                    subtitle: 'Securely log out of your account',
                    leading: Iconsax.logout_copy,
                    onTap: () {
                      unawaited(HapticFeedback.heavyImpact());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeaderCard(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(AppConfig.paddingHalf.w),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius.r),
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 35.r,
                backgroundColor: colorScheme.primaryContainer,
                child: ClipOval(
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    width: 76.r,
                    height: 76.r,
                    memCacheHeight: 200,
                    imageUrl:
                        'https://media.licdn.com/dms/image/v2/D5603AQHpMGFlYFIAyw/profile-displayphoto-scale_400_400/B56ZnjHIJxHIAg-/0/1760451933899?e=1776902400&v=beta&t=ClsT0ppYA0_8z9ViCSbiS4FG81mCgMkabjoNBHSN1hc',
                    placeholder: (context, url) =>
                        const Icon(Iconsax.user_copy),
                    errorWidget: (context, url, error) =>
                        const Icon(Iconsax.cloud_cross_copy),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  unawaited(HapticFeedback.vibrate());
                  await context.showBottomSheetComponent(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTileIconComponent.top(
                          title: 'Camera',
                          subtitle: 'Take a new photo using your camera',
                          leading: Iconsax.camera_copy,
                          onTap: () => Navigator.pop(context),
                        ),
                        ListTileIconComponent.middle(
                          title: 'Gallery',
                          subtitle:
                              'Choose an existing photo from your gallery',
                          leading: Iconsax.image_copy,
                          onTap: () => Navigator.pop(context),
                        ),
                        ListTileIconComponent.bottom(
                          title: 'Remove Photo',
                          subtitle: 'Delete your current profile picture',
                          leading: Iconsax.trash_copy,
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(6.r),
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                    border: Border.all(color: colorScheme.surface, width: 2),
                  ),
                  child: Icon(
                    Iconsax.camera_copy,
                    size: 12.r,
                    color: colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mostafa Mahmoud',
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'MostafaSensei106@gmail.com',
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Iconsax.verify_copy,
                        size: 12.r,
                        color: colorScheme.primary,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'Verified Account',
                        style: textTheme.labelSmall?.copyWith(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButtonComponent.filled(icon: Iconsax.edit_copy, onPressed: () {}),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppConfig.padding,
        right: AppConfig.padding,
        top: AppConfig.padding,
        bottom: AppConfig.paddingHalf,
      ),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildSettingsGroup(
    BuildContext context, {
    required List<Widget> children,
  }) {
    return Column(children: children);
  }
}
