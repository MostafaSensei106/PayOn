import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../constants/app_config.dart';

class SearchBarComponent extends StatelessWidget {
  const SearchBarComponent({required this.hintText, super.key, this.onChanged});
  final String hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(final BuildContext context) => TextField(
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
