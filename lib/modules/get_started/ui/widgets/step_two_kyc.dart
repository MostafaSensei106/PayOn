import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/constants/app_config.dart';
import '../../../../core/widgets/buttons/outlined_button/outlined_button_component.dart';
import '../../logic/cubit/register/register_cubit.dart';
import '../../logic/cubit/register/register_state.dart';

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
          previous.form.files != current.form.files ||
          previous.form.isOcrProcessing != current.form.isOcrProcessing,
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
                      const SizedBox(height: 8),
                      OutlinedButtonComponent.icon(
                        label: uploadedFile != null
                            ? 'Uploaded'
                            : 'Upload ${file.name}',
                        icon: uploadedFile != null
                            ? Icons.check_circle
                            : Iconsax.document_upload_copy,
                        isEnabled: !form.isOcrProcessing,
                        onPressed: () => _pickFile(context, file.id),
                      ),
                    ],
                  ),
                );
              },
            ),
            if (form.isOcrProcessing)
              Container(
                color: Colors.black.withValues(alpha: 0.1),
                child: const Center(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(AppConfig.padding),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: AppConfig.padding),
                          Text('Analyzing document...'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
