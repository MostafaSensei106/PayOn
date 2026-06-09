import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/entity/params/get_transactions_params.dart';

class TransactionsFilterBottomSheet extends HookWidget {
  const TransactionsFilterBottomSheet({
    required this.initialFilters,
    super.key,
  });

  final GetTransactionsParams initialFilters;

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);

    // Form state
    final minAmount = useState<double>(initialFilters.minAmount);
    final maxAmount = useState<double>(initialFilters.maxAmount);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormFieldComponent(
                label: 'Min Amount',
                prefixIcon: Icons.attach_money,
                initialValue: minAmount.value > 0
                    ? minAmount.value.toString()
                    : '',
                keyboardType: TextInputType.number,
                onChanged: (val) {
                  minAmount.value = double.tryParse(val) ?? 0.0;
                },
              ),
            ),
            SizedBox(width: AppConfig.paddingHalf.h),
            Expanded(
              child: TextFormFieldComponent(
                label: 'Max Amount',
                prefixIcon: Icons.attach_money,
                initialValue: maxAmount.value > 0
                    ? maxAmount.value.toString()
                    : '',
                keyboardType: TextInputType.number,
                onChanged: (val) {
                  maxAmount.value = double.tryParse(val) ?? 0.0;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: AppConfig.padding * 2),
        FilledButtonComponent(
          label: 'Apply Filters',
          onPressed: () {
            final newFilters = initialFilters.copyWith(
              minAmount: minAmount.value,
              maxAmount: maxAmount.value,
            );
            context.read<HomeCubit>().applyTransactionFilters(newFilters);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
