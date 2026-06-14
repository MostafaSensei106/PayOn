import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/extensions/extensions.dart';
import '../../../../core/widgets/buttons/filled_button/filled_button_component.dart';
import '../../../../core/widgets/buttons/outlined_button/outlined_button_component.dart';
import '../../../../core/widgets/slivers/sliver_app_bar/side_page_sliver_app_bar_with_waves_component.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';

class AddAccountKycPage extends HookWidget {
  const AddAccountKycPage({super.key});

  Future<void> _pickFile(BuildContext context, int docId) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null && context.mounted) {
      context.read<HomeCubit>().updateKycFile(docId, File(image.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return Scaffold(
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is Failure) {
            unawaited(
              context.dialog.showError(title: 'Error', error: state.message),
            );
          }
        },
        builder: (context, state) {
          return state.maybeWhen(
            success:
                (
                  wallets,
                  transactions,
                  isTransactionsLoading,
                  filters,
                  requiredFiles,
                  kycFiles,
                  isUploading,
                  newAccountId,
                ) {
                  return Column(
                    children: [
                      Expanded(
                        child: NestedScrollView(
                          controller: scrollController,
                          headerSliverBuilder: (context, innerBoxIsScrolled) {
                            return [
                              SidePageSliverAppBarWithWavesComponent(
                                scrollController: scrollController,
                                title: 'Document Upload',
                              ),
                            ];
                          },
                          body: ListView.builder(
                            padding: const EdgeInsets.all(AppConfig.padding),
                            itemCount: requiredFiles.length,
                            itemBuilder: (context, index) {
                              final file = requiredFiles[index];
                              final uploadedFile = kycFiles[file.id];

                              return Padding(
                                padding: const EdgeInsets.only(
                                  bottom: AppConfig.padding,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      file.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    OutlinedButtonComponent.icon(
                                      label: uploadedFile != null
                                          ? 'Selected'
                                          : 'Select ${file.name}',
                                      icon: uploadedFile != null
                                          ? Icons.check_circle
                                          : Iconsax.document_upload_copy,
                                      onPressed: () =>
                                          _pickFile(context, file.id),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(AppConfig.padding),
                        child: FilledButtonComponent(
                          label: isUploading
                              ? 'Uploading...'
                              : 'Upload Documents',
                          onPressed:
                              kycFiles.length == requiredFiles.length &&
                                  !isUploading
                              ? () {
                                  unawaited(() async {
                                    final success = await context
                                        .read<HomeCubit>()
                                        .uploadKYCFiles();
                                    if (success && context.mounted) {
                                      await context.dialog.showInfo(
                                        title: 'Success',
                                        body:
                                            'Documents uploaded successfully! Your account is pending approval.',
                                      );
                                      if (context.mounted) {
                                        Navigator.of(context).pop();
                                      }
                                    }
                                  }());
                                }
                              : () {},
                          isEnabled:
                              kycFiles.length == requiredFiles.length &&
                              !isUploading,
                        ),
                      ),
                    ],
                  );
                },
            failure: (message) => Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.red),
              ),
            ),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
