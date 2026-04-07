import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/outlined_button/outlined_button_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_form_state.dart';
import '../../logic/cubit/login_state.dart';

class LoginAction extends StatelessWidget {
  const LoginAction({
    required this.form,
    required this.isLoading,
    required this.l10n,
    super.key,
  });

  final AppLocalizations l10n;
  final LoginFormState form;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) =>
          current is Loading ||
          previous is Loading ||
          current is Failure ||
          previous is Failure,
      builder: (context, state) {
        return Column(
          spacing: AppConfig.margin,
          children: [
            FilledButtonComponent.icon(
              icon: Iconsax.login_1_copy,

              label: isLoading ? l10n.please_wait : l10n.login,
              isEnabled: form.isValid,
              onPressed: () async {
                await context.read<LoginCubit>().login();
              },
            ),

            OutlinedButtonComponent.icon(
              icon: Iconsax.finger_scan_copy,
              label: l10n.login_with_fingerprint,
              isEnabled: isLoading ? false : true,
              onPressed: () async {
                final success = await context
                    .read<LoginCubit>()
                    .loginWithBiometrics();
                if (success && context.mounted) {
                  context.go(AppRouter.home);
                }
              },
            ),
          ],
        );
      },
    );
  }
}
