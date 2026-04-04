import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/validator/password.dart';
import '../../../../core/validator/user_name.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/inputs/password_form_field/password_form_field_component.dart';
import '../../../../core/widgets/inputs/text_form_field/text_form_field_component.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_form_state.dart';
import '../../logic/cubit/login_state.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final scrollController = useScrollController();

    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<LoginCubit>(),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (form, data) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('تم تسجيل الدخول بنجاح! 🚀')),
                );
              },

              failure: (form, error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error), backgroundColor: Colors.red),
                );
              },
            );
          },

          builder: (context, state) {
            final form = state.form;
            final isLoading = state is Loading;

            return LoginPageView(
              scrollController: scrollController,
              form: form,
              isLoading: isLoading,
              l10n: l10n,
            );
          },
        ),
      ),
    );
  }
}

class LoginPageView extends StatelessWidget {
  const LoginPageView({
    required this.scrollController,
    required this.form,
    required this.isLoading,
    required this.l10n,

    super.key,
  });

  final ScrollController scrollController;
  final LoginFormState form;
  final bool isLoading;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SidePageSliverAppBarWithWavesComponent(
          scrollController: scrollController,
          title: l10n.login,
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: AppConfig.padding),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _LoginHeader(l10n: l10n),
                const SpacingComponent.vertical(AppConfig.padding * 3),
                _LoginForm(form: form, isLoading: isLoading, l10n: l10n),
                const SpacingComponent.vertical(AppConfig.padding * 2),
                _LoginAction(form: form, isLoading: isLoading, l10n: l10n),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _LoginHeader extends StatelessWidget {
  const _LoginHeader({required this.l10n});
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.welcome_back,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SpacingComponent.vertical(AppConfig.paddingHalf),
        Text(
          l10n.login_subtitle,
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    required this.form,
    required this.isLoading,
    required this.l10n,
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
          Align(
            alignment: Alignment.centerLeft,
            child: TextButtonComponent(
              label: l10n.forgot_password,
              onPressed: () => context.push(AppRouter.forgetPassword),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginAction extends StatelessWidget {
  const _LoginAction({
    required this.form,
    required this.isLoading,
    required this.l10n,
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
        return isLoading
            ? const Center(child: CircularProgressIndicator())
            : FilledButtonComponent(
                label: l10n.login,
                isEnabled: form.isValid,
                onPressed: () async {
                  await context.read<LoginCubit>().login();
                },
              );
      },
    );
  }
}
