import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../logic/cubit/request_money_cubit.dart';
import '../../logic/cubit/request_money_state.dart';

class RequestMoneyPage extends HookWidget {
  const RequestMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);

    useEffect(() {
      unawaited(context.read<RequestMoneyCubit>().getPendingRequests());
      return null;
    }, []);

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.request_money),
      body: BlocBuilder<RequestMoneyCubit, RequestMoneyState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (message) => Center(child: Text(message)),
            success: (requests) {
              if (requests.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Iconsax.money_recive_copy,
                        size: 64.r,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'No Pending Requests',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                      ),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () =>
                    context.read<RequestMoneyCubit>().getPendingRequests(),
                child: ListView.separated(
                  padding: const EdgeInsets.all(AppConfig.padding),
                  itemCount: requests.length,
                  separatorBuilder: (context, index) => SizedBox(height: 12.h),
                  itemBuilder: (context, index) {
                    final request = requests[index];
                    return CardComponent(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: AvatarComponent(
                          imageUrl: request.senderImage,
                          radius: 24.r,
                        ),
                        title: Text(
                          request.sender,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '${request.amount} ${request.currencyCode}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              request.status,
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${request.createdAt.day}/${request.createdAt.month}/${request.createdAt.year}',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
