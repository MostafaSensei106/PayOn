// Added for Sine Wave calculations
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/di/di.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/text_button/text_button_component.dart';
import '../../../../core/widgets/inputs/password_field/password_field_component.dart';
import '../../../../core/widgets/inputs/text_field/text_field_component.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/sliver_app_bar_with_waves_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);

    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<LoginCubit>(),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBarWithWavesComponent(
              scrollController: _scrollController,
              title: l10n.login,
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConfig.padding,
              ),
              sliver: SliverToBoxAdapter(child: LoginPageView(l10n: l10n)),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPageView extends StatelessWidget {
  const LoginPageView({required this.l10n, super.key});

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.welcome_back,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SpacingComponent.vertical(AppConfig.paddingHalf),
          Text(
            l10n.login_subtitle,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SpacingComponent.vertical(AppConfig.padding * 3),
          TextFieldComponent(
            label: l10n.email_address,
            prefixIcon: Iconsax.sms_copy,
            keyboardType: TextInputType.emailAddress,
          ),
          const SpacingComponent.vertical(AppConfig.padding),
          PasswordFieldComponent(label: l10n.password),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButtonComponent(
              label: l10n.forgot_password,
              onPressed: () => context.push(AppRouter.forgetPassword),
            ),
          ),
          const SpacingComponent.vertical(AppConfig.padding * 2),
          FilledButtonComponent(
            label: l10n.login,
            onPressed: () => context.go(AppRouter.home),
          ),
        ],
      ),
    );
  }
}
