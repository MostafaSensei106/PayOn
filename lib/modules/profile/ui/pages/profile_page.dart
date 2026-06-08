import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/constants/app_enums.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
import '../../../../core/widgets/buttons/icon_button/icon_button_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';
import '../../logic/cubit/user_profile_cubit.dart';
import '../../logic/cubit/user_profile_state.dart';
import '../../logic/entity/user_profile_entity.dart';

class ProfilePage extends HookWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }
}

class ProfileView extends HookWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final scrollController = useScrollController();

    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        slivers: [
          SidePageSliverAppBarWithWavesComponent(
            scrollController: scrollController,
            title: l10n.profile,
          ),
          BlocBuilder<UserProfileCubit, UserProfileState>(
            builder: (context, state) {
              return state.when(
                initial: () =>
                    const SliverToBoxAdapter(child: SizedBox.shrink()),
                loading: () => const _ProfileLoadingState(),
                success: (data) => _ProfileSuccessState(data: data),
                failure: (message) =>
                    SliverFillRemaining(child: Center(child: Text(message))),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ProfileLoadingState extends StatelessWidget {
  const _ProfileLoadingState();

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return SliverToBoxAdapter(
      child: Skeletonizer(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConfig.padding.w,
            vertical: AppConfig.paddingHalf.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _ProfileHeaderCard(
                data: UserProfileEntity.placeholder(
                  name: 'User Name Placeholder',
                  email: 'email@placeholder.com',
                ),
              ),
              _SectionHeader(title: l10n.account_details),
              Column(
                children: [
                  ListTileIconComponent.top(
                    title: l10n.phone_number,
                    subtitle: '+20 1234567890',
                    leading: Iconsax.call_copy,
                    onTap: () {},
                  ),
                  ListTileIconComponent.middle(
                    title: l10n.date_of_birth,
                    subtitle: '01/01/1990',
                    leading: Iconsax.calendar_1_copy,
                    onTap: () {},
                  ),
                  ListTileIconComponent.bottom(
                    title: l10n.location,
                    subtitle: 'Cairo, Egypt',
                    leading: Iconsax.location_copy,
                    onTap: () {},
                  ),
                ],
              ),
              _SectionHeader(title: l10n.security_and_privacy),
              Column(
                children: [
                  ListTileIconComponent.top(
                    title: l10n.change_password,
                    subtitle: l10n.update_login_credentials,
                    leading: Iconsax.key_copy,
                    onTap: () {},
                  ),
                  ListTileIconComponent.bottom(
                    title: l10n.delete_account,
                    subtitle: l10n.delete_account_desc,
                    leading: Iconsax.user_remove_copy,
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileSuccessState extends StatelessWidget {
  const _ProfileSuccessState({required this.data});
  final UserProfileEntity data;

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConfig.padding.w,
          vertical: AppConfig.paddingHalf.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ProfileHeaderCard(data: data),
            _SectionHeader(title: l10n.account_details),
            Column(
              children: [
                ListTileIconComponent.top(
                  title: l10n.phone_number,
                  subtitle: data.phone,
                  leading: Iconsax.call_copy,
                  onTap: () {},
                ),
                ListTileIconComponent.middle(
                  title: l10n.date_of_birth,
                  subtitle: data.birthData,
                  leading: Iconsax.calendar_1_copy,
                  onTap: () {},
                ),
                ListTileIconComponent.middle(
                  title: 'IPA',
                  subtitle: data.ipa,
                  leading: Iconsax.personalcard_copy,
                  onTap: () {},
                ),
                ListTileIconComponent.middle(
                  title: l10n.gender,
                  subtitle: GenderType.values
                      .firstWhere(
                        (e) => e.key == data.gender,
                        orElse: () => GenderType.none,
                      )
                      .message(context),
                  leading: Iconsax.user_copy,
                  onTap: () {},
                ),
                ListTileIconComponent.bottom(
                  title: 'Status',
                  subtitle: data.status,
                  leading: Iconsax.information_copy,
                  onTap: () {},
                ),
              ],
            ),
            _SectionHeader(title: l10n.security_and_privacy),
            Column(
              children: [
                ListTileIconComponent.top(
                  title: 'National ID',
                  subtitle: data.nationalId,
                  leading: Iconsax.card_tick_copy,
                  onTap: () {},
                ),
                ListTileIconComponent.middle(
                  title: l10n.change_password,
                  subtitle: l10n.update_login_credentials,
                  leading: Iconsax.key_copy,
                  onTap: () => unawaited(HapticFeedback.vibrate()),
                ),
                ListTileIconComponent.bottom(
                  title: l10n.delete_account,
                  subtitle: l10n.delete_account_desc,
                  leading: Iconsax.user_remove_copy,
                  onTap: () => unawaited(HapticFeedback.vibrate()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileHeaderCard extends StatelessWidget {
  const _ProfileHeaderCard({required this.data});
  final UserProfileEntity data;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.localeKeys;

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
                        'https://hips.hearstapps.com/hmg-prod/images/demon-slayer-kimetsu-no-yaiba-646f30ac5433e.jpg',
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
                          title: l10n.camera,
                          subtitle: l10n.take_photo_camera,
                          leading: Iconsax.camera_copy,
                          onTap: () => Navigator.pop(context),
                        ),
                        ListTileIconComponent.middle(
                          title: l10n.gallery,
                          subtitle: l10n.choose_photo_gallery,
                          leading: Iconsax.image_copy,
                          onTap: () => Navigator.pop(context),
                        ),
                        ListTileIconComponent.bottom(
                          title: l10n.remove_photo,
                          subtitle: l10n.delete_profile_picture,
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
                  data.name,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  data.email,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6.h),
                if (data.phoneVerified)
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
                          data.phoneVerified
                              ? l10n.verified_account
                              : l10n.unverified_account,
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
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
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
}
