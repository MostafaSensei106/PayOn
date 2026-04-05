import 'package:flutter/material.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/layout/spacing/spacing_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';
import '../../../../l10n/app_localizations.dart';
import '../../logic/cubit/login_form_state.dart';
import 'lgoin_action.dart';
import 'lgoin_name_password_form.dart';
import 'login_page_header.dart';

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
                LoginPageHeader(l10n: l10n),
                const SpacingComponent.vertical(AppConfig.padding * 3),
                LoginNameAndPasswordForm(
                  form: form,
                  isLoading: isLoading,
                  l10n: l10n,
                ),
                const SpacingComponent.vertical(AppConfig.padding * 2),
                LoginAction(form: form, isLoading: isLoading, l10n: l10n),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
