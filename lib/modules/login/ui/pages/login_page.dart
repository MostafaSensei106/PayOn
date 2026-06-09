import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/di.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/services/l10n/l10n_service.dart';
import '../../../../core/services/toast/base_toast_service.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';
import '../widgets/login_page_view.dart';

class LoginPage extends HookWidget {
  const LoginPage({super.key});

  @override
  Widget build(final BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    final scrollController = useScrollController();

    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is Loading || current is Failure || current is Success,
        listener: (context, state) {
          state.whenOrNull(
            success: (_, _) {
              context.pop();
              getIt<BaseToastService>().showSuccess(context, l10n.welcome_back);
              const HomeRoute().pushReplacement(context);
            },

            loading: (_) {
              if (context.mounted) context.dialog.showLoading();
            },

            failure: (_, e) {
              context.pop();
              getIt<BaseToastService>().showError(context, e);
            },
          );
        },
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return LoginPageView(
              scrollController: scrollController,
              l10n: l10n,
              form: state.form,
              isLoading: state.maybeWhen(
                loading: (_) => true,
                orElse: () => false,
              ),
            );
          },
        ),
      ),
    );
  }
}
