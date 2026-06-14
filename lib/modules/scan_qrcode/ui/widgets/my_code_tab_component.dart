import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../profile/logic/cubit/user_profile_cubit.dart';
import '../../../profile/logic/cubit/user_profile_state.dart';

class MyCodeTabComponent extends StatelessWidget {
  const MyCodeTabComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppConfig.padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
        child: BlocBuilder<UserProfileCubit, UserProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (data) {
                final qrData = data.ipa;
                return LayoutBuilder(
                  builder: (context, constraints) {
                    return Stack(
                      children: [
                        Center(
                          child: Container(
                            width: constraints.maxWidth * 0.7,
                            height: constraints.maxWidth * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: theme.colorScheme.primary,
                                width: 4,
                              ),
                              borderRadius: BorderRadius.circular(
                                AppConfig.inBorderRadius,
                              ),
                            ),
                            child: Center(
                              child: QrImageView(
                                data: qrData,
                                size: constraints.maxWidth * 0.6,
                                eyeStyle: QrEyeStyle(
                                  eyeShape: QrEyeShape.square,
                                  color: theme.colorScheme.primary,
                                ),
                                dataModuleStyle: QrDataModuleStyle(
                                  dataModuleShape: QrDataModuleShape.square,
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }
}
