import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/constants/app_config.dart';

class SearchBarComponent extends StatelessWidget {
  final String hintText;
  final void Function(String)? onChanged;

  const SearchBarComponent({super.key, required this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Iconsax.search_normal_1),
        filled: true,
        fillColor: Theme.of(context).colorScheme.surfaceContainerHighest
            .withValues(alpha: AppConfig.searchBarOpacity),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConfig.roundBorderRadius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
