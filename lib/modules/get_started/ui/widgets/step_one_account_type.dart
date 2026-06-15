// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/display/list_tile/list_tile_widget_component.dart';
import '../../logic/cubit/account_type/account_type_cubit.dart';
import '../../logic/cubit/account_type/account_type_state.dart';
import '../../logic/cubit/register/register_cubit.dart';
import '../../logic/entities/account_type_entity.dart';

class StepOneAccountType extends StatelessWidget {
  const StepOneAccountType({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<AccountTypeCubit, AccountTypeState<AccountTypeEntity>>(
      buildWhen: (previous, current) =>
          current is Success || current is Failure || current is Loading,
      builder: (context, state) {
        return state.when(
          initial: () {
            unawaited(context.read<AccountTypeCubit>().getAccountTypes());
            return const _AccountTypeSkeleton();
          },
          loading: () => const _AccountTypeSkeleton(),
          success: (data) {
            final allItems = data.items;
            return RefreshIndicator(
              onRefresh: () =>
                  context.read<AccountTypeCubit>().getAccountTypes(),

              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConfig.padding,
                  vertical: AppConfig.paddingHalf,
                ),
                itemCount: allItems.length,
                itemBuilder: (context, index) {
                  final item = allItems[index];
                  void onTap() =>
                      context.read<RegisterCubit>().accountTypeOnChanged(item);

                  if (index == 0) {
                    return ListTileIconComponent(
                      title: item.type,
                      leading: item.parentId == 7
                          ? Iconsax.shop_copy
                          : Iconsax.user_copy,
                      trailing: Radio<int>(
                        value: item.id,
                        groupValue: context
                            .watch<RegisterCubit>()
                            .state
                            .form
                            .accountType
                            ?.id,
                        onChanged: (_) => onTap(),
                      ),
                      onTap: onTap,
                    );
                  } else if (index == allItems.length - 1) {
                    return ListTileIconComponent.bottom(
                      title: item.type,
                      leading: item.parentId == 7
                          ? Iconsax.shop_copy
                          : Iconsax.user_copy,
                      trailing: Radio<int>(
                        value: item.id,
                        groupValue: context
                            .watch<RegisterCubit>()
                            .state
                            .form
                            .accountType
                            ?.id,
                        onChanged: (_) => onTap(),
                      ),
                      onTap: onTap,
                    );
                  } else {
                    return ListTileIconComponent.middle(
                      title: item.type,
                      leading: item.parentId == 7
                          ? Iconsax.shop_copy
                          : Iconsax.user_copy,
                      trailing: Radio<int>(
                        value: item.id,
                        groupValue: context
                            .watch<RegisterCubit>()
                            .state
                            .form
                            .accountType
                            ?.id,
                        onChanged: (_) => onTap(),
                      ),
                      onTap: onTap,
                    );
                  }
                },
              ),
            );
          },
          failure: (final error) => Center(child: Text(error)),
        );
      },
    );
  }
}

class _AccountTypeSkeleton extends StatelessWidget {
  const _AccountTypeSkeleton();

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView(
        padding: const EdgeInsets.all(AppConfig.padding),
        children: const [
          ListTileWidgetComponent.top(
            title: 'Account Type Placeholder',
            subtitle: 'Description placeholder for account type',
            leading: CircleAvatar(),
            trailing: Radio<int>(value: 1, groupValue: 0),
          ),
          ListTileWidgetComponent.middle(
            title: 'Account Type Placeholder',
            subtitle: 'Description placeholder for account type',
            leading: CircleAvatar(),
            trailing: Radio<int>(value: 1, groupValue: 0),
          ),
          ListTileWidgetComponent.middle(
            title: 'Account Type Placeholder',
            subtitle: 'Description placeholder for account type',
            leading: CircleAvatar(),
            trailing: Radio<int>(value: 1, groupValue: 0),
          ),
          ListTileWidgetComponent.middle(
            title: 'Account Type Placeholder',
            subtitle: 'Description placeholder for account type',
            leading: CircleAvatar(),
            trailing: Radio<int>(value: 1, groupValue: 0),
          ),
          ListTileWidgetComponent.middle(
            title: 'Account Type Placeholder',
            subtitle: 'Description placeholder for account type',
            leading: CircleAvatar(),
            trailing: Radio<int>(value: 1, groupValue: 0),
          ),
          ListTileWidgetComponent.middle(
            title: 'Account Type Placeholder',
            subtitle: 'Description placeholder for account type',
            leading: CircleAvatar(),
            trailing: Radio<int>(value: 1, groupValue: 0),
          ),
          ListTileWidgetComponent.bottom(
            title: 'Account Type Placeholder',
            subtitle: 'Description placeholder for account type',
            leading: CircleAvatar(),
            trailing: Radio<int>(value: 1, groupValue: 0),
          ),
        ],
      ),
    );
  }
}
