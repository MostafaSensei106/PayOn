import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/display/avatar/avatar_component.dart';
import '../../../../core/widgets/display/card/card_component.dart';
import '../../../../core/widgets/inputs/otp_field/otp_field_component.dart';
import '../../logic/cubit/request_money_cubit.dart';
import '../../logic/cubit/request_money_state.dart';

class PendingRequestsBottomSheetComponent extends StatelessWidget {
  const PendingRequestsBottomSheetComponent({
    required this.walletId,
    super.key,
  });

  final String walletId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: BlocBuilder<RequestMoneyCubit, RequestMoneyState>(
        builder: (context, state) {
          return state.maybeWhen(
            pendingRequestsLoaded: (form, requests) {
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
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                      ),
                    ],
                  ),
                );
              }

              return ListView.separated(
                padding: const EdgeInsets.all(AppConfig.padding),
                itemCount: requests.length,
                separatorBuilder: (context, index) => SizedBox(height: 12.h),
                itemBuilder: (context, index) {
                  final request = requests[index];
                  return CardComponent(
                    child: InkWell(
                      onTap: () {
                        _handleRequestTap(
                          context,
                          request.id,
                          request.amount,
                          request.currencyCode,
                        );
                      },
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
                    ),
                  );
                },
              );
            },
            failure: (form, message) => Center(child: Text(message)),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  void _handleRequestTap(
    BuildContext context,
    int draftId,
    double amount,
    String currencyCode,
  ) {
    final cubit = context.read<RequestMoneyCubit>();
    unawaited(
      showDialog<void>(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Approve Request?'),
            content: Text(
              'Do you want to approve this request for $amount $currencyCode?',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(ctx);
                  _promptPinAndApprove(context, cubit, draftId, false);
                },
                child: const Text('Reject', style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(ctx);
                  _promptPinAndApprove(context, cubit, draftId, true);
                },
                child: const Text('Approve'),
              ),
            ],
          );
        },
      ),
    );
  }

  void _promptPinAndApprove(
    BuildContext context,
    RequestMoneyCubit cubit,
    int draftId,
    bool isApproved,
  ) {
    unawaited(
      showDialog<void>(
        context: context,
        builder: (ctx) {
          var enteredPin = '';
          return AlertDialog(
            title: const Text('Enter PIN'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                OtpFieldComponent(
                  onChanged: (pin) => enteredPin = pin,
                  onCompleted: (pin) => enteredPin = pin,
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  if (enteredPin.length == 6) {
                    Navigator.pop(ctx);
                    unawaited(
                      cubit.approvePendingRequest(
                        pin: enteredPin,
                        walletId: walletId,
                        draftId: draftId,
                        isApproved: isApproved,
                      ),
                    );
                  }
                },
                child: const Text('Confirm'),
              ),
            ],
          );
        },
      ),
    );
  }
}
