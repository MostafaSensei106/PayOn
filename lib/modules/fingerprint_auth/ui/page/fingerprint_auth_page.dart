import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/constants/svgs_images.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/display/list_tile/list_tile_icon_component.dart';
import '../../../../core/widgets/display/svg/svg_component.dart';
import '../../../../core/widgets/navigation/app_bar/side_page_app_bar_component.dart';
import '../../logic/cubit/security_cubit.dart';
import '../../logic/cubit/security_state.dart';

class FingerprintAuthPage extends StatelessWidget {
  const FingerprintAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.localKeys;

    return Scaffold(
      appBar: SidePageAppBarComponent(title: l10n.biometric_auth),
      body: BlocBuilder<SecurityCubit, SecurityState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (settings) => SingleChildScrollView(
              padding: const EdgeInsets.all(AppConfig.padding),
              child: Column(
                children: [
                  SvgComponent.descriptions(
                    path: SvgsImages.fingerprintSvg,
                    title: l10n.biometric_auth,
                    subtitle: l10n.biometric_auth_desc,
                  ),
                  const SizedBox(height: AppConfig.margin),

                  settings.isDeviceSupported
                      ? ListTileIconComponent(
                          leading: Iconsax.finger_cricle_copy,
                          title: l10n.fingerprint_auth,
                          subtitle: l10n.fingerprint_auth_desc,
                          trailing: Switch(
                            value: settings.isFingerprintEnabled,
                            onChanged: (value) async {
                              await context
                                  .read<SecurityCubit>()
                                  .toggleBiometricsStatus(isEnabled: value);
                            },
                          ),
                          onTap: () => context
                              .read<SecurityCubit>()
                              .toggleBiometricsStatus(
                                isEnabled: !settings.isFingerprintEnabled,
                              ),
                        )
                      : ListTile(
                          title: Text(l10n.biometric_not_supported),
                          leading: const Icon(Iconsax.info_circle_copy),
                        ),
                ],
              ),
            ),
            failure: (message) => Center(child: Text(message)),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
