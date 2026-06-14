import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/inputs/otp_field/otp_field_component.dart';
import '../../logic/cubit/otp/otp_cubit.dart';
import '../../logic/cubit/register/register_cubit.dart';
import '../../logic/cubit/register/register_state.dart';

class StepThreeOTP extends HookWidget {
  const StepThreeOTP({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final timeLeft = useState(120);
    final canResend = useState(false);

    useEffect(() {
      Timer? timer;
      if (timeLeft.value > 0) {
        canResend.value = false;
        timer = Timer.periodic(const Duration(seconds: 1), (final t) {
          if (timeLeft.value > 0) {
            timeLeft.value--;
          } else {
            t.cancel();
            canResend.value = true;
          }
        });
      } else {
        canResend.value = true;
      }
      return timer?.cancel;
    }, [timeLeft.value == 120]);

    Future<void> resendCode() async {
      final registerForm = context.read<RegisterCubit>().state.form;
      await context.read<OtpCubit>().sendOTP(
        phone: registerForm.formattedPhoneNumber,
        lang: registerForm.lang,
      );
      timeLeft.value = 120;
    }

    String formatTime(int seconds) {
      final minutes = seconds ~/ 60;
      final remainingSeconds = seconds % 60;
      return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
    }

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
      children: [
        Column(
          spacing: AppConfig.paddingHalf,
          children: [
            Text(
              l10n.otp_message,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            OtpFieldComponent(
              onCompleted: (final otp) async {
                final registerForm = context.read<RegisterCubit>().state.form;
                await context.read<OtpCubit>().verifyOTP(
                  otp,
                  phone: registerForm.formattedPhoneNumber,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${l10n.code_expires_in} ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  formatTime(timeLeft.value),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Center(
              child: TextButtonComponent(
                onPressed: canResend.value ? () => resendCode() : () {},
                label: l10n.resend_code,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
