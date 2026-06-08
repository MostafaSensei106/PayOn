import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/utils/validator/password.dart';
import '../../../../core/utils/validator/user_name.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/inputs/checkbox/checkbox_component.dart';
import '../../../../core/widgets/inputs/password_form_field/password_form_field_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginNameAndPasswordForm extends StatelessWidget {
  const LoginNameAndPasswordForm({
    required this.form,
    required this.isLoading,
    required this.l10n,
    super.key,
  });
  final LoginFormState form;
  final bool isLoading;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          TextFormFieldComponent(
            label: l10n.user_name,
            prefixIcon: Iconsax.user_copy,
            keyboardType: TextInputType.name,
            onChanged: (val) =>
                context.read<LoginCubit>().userNameOnChanged(val),
            isEnable: !isLoading,
            errorText: form.userName.displayError?.nameWithL10n(context),
          ),
          const SpacingComponent.vertical(AppConfig.padding),
          PasswordFieldComponent(
            label: l10n.password,
            isEnable: !isLoading,
            onChanged: (val) =>
                context.read<LoginCubit>().passwordOnChanged(val),
            errorText: form.password.displayError?.nameWithL10n(context),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CheckboxComponent(
                title: l10n.remember_me,
                value: form.isRememberMe,
                onChanged: context.read<LoginCubit>().rememberMeOnChanged,
              ),
              TextButtonComponent(
                label: l10n.forgot_password,
                isEnable: !isLoading,
                onPressed: () =>
                    const ForgetPasswordRoute().push<void>(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
