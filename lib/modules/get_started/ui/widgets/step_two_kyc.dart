import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/constants/app_config.dart';
import '../../logic/cubit/register/register_cubit.dart';
import '../../logic/cubit/register/register_state.dart';
import 'realtime_ocr_scanner.dart';

class StepTwoKYC extends StatelessWidget {
  const StepTwoKYC({super.key});

  Future<void> _pickFile(BuildContext context, int docId) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null && context.mounted) {
      await context.read<RegisterCubit>().updateFile(docId, File(image.path));
    }
  }

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) =>
          previous.form.requiredFiles != current.form.requiredFiles ||
          previous.form.files != current.form.files,
      builder: (context, state) {
        final form = state.form;

        if (form.requiredFiles.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return Stack(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(AppConfig.padding),
              itemCount: form.requiredFiles.length,
              itemBuilder: (context, index) {
                final file = form.requiredFiles[index];
                final uploadedFile = form.files[file.id];

                return Padding(
                  padding: const EdgeInsets.only(bottom: AppConfig.padding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        file.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      if (file.description != null)
                        Text(
                          file.description!,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      const SizedBox(height: 12),
                      if (uploadedFile != null)
                        Stack(
                          children: [
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  AppConfig.inBorderRadius,
                                ),
                                image: DecorationImage(
                                  image: FileImage(uploadedFile),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 8,
                              right: 8,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 12,
                                child: Icon(
                                  Icons.check,
                                  size: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(
                                      AppConfig.inBorderRadius,
                                    ),
                                  ),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: const Text(
                                  'Analyzed successfully',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        )
                      else
                        RealtimeOcrScanner(
                          docId: file.id,
                          onSuccess: (fileBytes) async {
                            await context.read<RegisterCubit>().updateFile(
                              file.id,
                              fileBytes,
                            );
                          },
                        ),
                      if (uploadedFile != null)
                        TextButton.icon(
                          onPressed: () => _pickFile(context, file.id),
                          icon: const Icon(Iconsax.edit_copy, size: 16),
                          label: const Text('Retake Manual Photo'),
                        )
                      else
                        TextButton.icon(
                          onPressed: () => _pickFile(context, file.id),
                          icon: const Icon(
                            Iconsax.document_upload_copy,
                            size: 16,
                          ),
                          label: const Text('Upload Manually Instead'),
                        ),
                    ],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
