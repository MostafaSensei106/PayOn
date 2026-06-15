import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/services/url_launcher/url_launcher_service.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../logic/cubit/add_money_cubit.dart';
import '../../logic/cubit/add_money_state.dart';

class DepositBottomSheetComponent extends StatefulWidget {
  const DepositBottomSheetComponent({super.key});

  @override
  State<DepositBottomSheetComponent> createState() =>
      _DepositBottomSheetComponentState();
}

class _DepositBottomSheetComponentState
    extends State<DepositBottomSheetComponent> {
  bool _showInstructions = false;

  @override
  Future<void> initState() async {
    super.initState();
    await context.read<AddMoneyCubit>().getProviders();
  }

  Future<void> _openMap(double lat, double lng) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    try {
      await UrlLauncherService().launchWebsite(url: url);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Could not open maps: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.localeKeys;
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _showInstructions
                    ? l10n.deposit_how_to
                    : l10n.deposit_search_nearest,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _showInstructions = !_showInstructions;
                  });
                },
                icon: Icon(
                  _showInstructions
                      ? Iconsax.location_copy
                      : Iconsax.info_circle_copy,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: _showInstructions
                ? _buildInstructions(context)
                : _buildProvidersList(context),
          ),
          SizedBox(height: 16.h),
          FilledButtonComponent(
            label: _showInstructions
                ? l10n.deposit_search_nearest
                : l10n.deposit_how_to,
            onPressed: () {
              setState(() {
                _showInstructions = !_showInstructions;
              });
            },
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  Widget _buildInstructions(BuildContext context) {
    final l10n = context.localeKeys;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.deposit_instructions_title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          SizedBox(height: 16.h),
          _buildInstructionStep(context, l10n.deposit_step1),
          SizedBox(height: 12.h),
          _buildInstructionStep(context, l10n.deposit_step2),
          SizedBox(height: 12.h),
          _buildInstructionStep(context, l10n.deposit_step3),
        ],
      ),
    );
  }

  Widget _buildInstructionStep(BuildContext context, String text) {
    return CardComponent(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Iconsax.verify_copy,
              color: Theme.of(context).colorScheme.primary,
              size: 24.r,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                text,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProvidersList(BuildContext context) {
    return BlocBuilder<AddMoneyCubit, AddMoneyState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          failure: (message) => Center(child: Text(message)),
          providersLoaded: (response) {
            final items = response.data.items;
            if (items.isEmpty) {
              return const Center(child: Text('No agents found nearby.'));
            }

            return ListView.separated(
              itemCount: items.length,
              separatorBuilder: (context, index) => SizedBox(height: 12.h),
              itemBuilder: (context, index) {
                final provider = items[index];
                return CardComponent(
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.primaryContainer,
                      child: Icon(
                        Iconsax.shop_add_copy,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    title: Text(
                      provider.providerName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(provider.providerAddress),
                    trailing: IconButton(
                      icon: Icon(
                        Iconsax.map_1_copy,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      onPressed: () => _openMap(provider.lat, provider.lng),
                    ),
                  ),
                );
              },
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
