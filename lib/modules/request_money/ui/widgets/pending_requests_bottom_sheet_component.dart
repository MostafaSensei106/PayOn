import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../home/logic/entity/transaction_entity.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/bottom_sheet/bottom_sheet_component.dart';
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
                      onTap: request.isSender
                          ? () {
                              _handleRequestTap(context, request);
                            }
                          : null,
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: AvatarComponent(
                          imageUrl: request.senderImage,
                          radius: 24.r,
                        ),
                        title: Text(
                          request.isSender ? request.receiver : request.sender,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              request.isSender
                                  ? 'Received Request'
                                  : 'Sent Request',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: request.isSender
                                    ? Colors.red
                                    : Colors.green,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              '${request.amount} ${request.currencyCode}',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
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
            pendingRequestsError: (form, message) =>
                Center(child: Text(message)),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  void _handleRequestTap(BuildContext context, TransactionItemEntity request) {
    final cubit = context.read<RequestMoneyCubit>();
    unawaited(
      context.dialog.showDialog<void>(
        title: const Text('Respond to Request'),
        content: Text(
          'How do you want to respond to this request for ${request.amount} ${request.currencyCode}?',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _confirmRejection(context, cubit, request);
            },
            child: const Text('Reject', style: TextStyle(color: Colors.red)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _promptPinAndApprove(context, cubit, request.id);
            },
            child: const Text('Accept & Pay'),
          ),
        ],
      ),
    );
  }

  void _confirmRejection(
    BuildContext context,
    RequestMoneyCubit cubit,
    TransactionItemEntity request,
  ) {
    unawaited(
      context.dialog.showDialog<void>(
        title: const Text('Confirm Rejection'),
        content: const Text('هل أنت متأكد من رفض الطلب؟'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              unawaited(cubit.rejectPendingRequest(transaction: request));
            },
            child: const Text('Reject', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _promptPinAndApprove(
    BuildContext context,
    RequestMoneyCubit cubit,
    int draftId,
  ) {
    unawaited(
      context.showBottomSheetComponent<void>(
        title: 'Enter PIN',
        child: _PinEntryWidget(
          onConfirm: (pin) {
            Navigator.pop(context);
            unawaited(
              cubit.approvePendingRequest(
                pin: pin,
                walletId: walletId,
                draftId: draftId,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _PinEntryWidget extends StatefulWidget {
  const _PinEntryWidget({required this.onConfirm});

  final ValueChanged<String> onConfirm;

  @override
  State<_PinEntryWidget> createState() => _PinEntryWidgetState();
}

class _PinEntryWidgetState extends State<_PinEntryWidget> {
  String _pin = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        OtpFieldComponent(
          onChanged: (pin) {
            setState(() {
              _pin = pin;
            });
          },
          onCompleted: (pin) {
            setState(() {
              _pin = pin;
            });
          },
        ),
        SizedBox(height: 24.h),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _pin.length == 6 ? () => widget.onConfirm(_pin) : null,
            child: const Text('Confirm'),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
      ],
    );
  }
}
