import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:payon/core/widgets/inputs/text_field/text_field_component.dart';

class PasswordFieldComponent extends StatefulWidget {
  final String label;
  final TextEditingController? controller;

  const PasswordFieldComponent({
    super.key,
    required this.label,
    this.controller,
  });

  @override
  State<PasswordFieldComponent> createState() => _PasswordFieldComponentState();
}

class _PasswordFieldComponentState extends State<PasswordFieldComponent> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldComponent(
      label: widget.label,
      controller: widget.controller,
      prefixIcon: Iconsax.lock,
      obscureText: _obscureText,
      suffixIcon: IconButton(
        icon: Icon(_obscureText ? Iconsax.eye : Iconsax.eye_slash),
        onPressed: () => setState(() => _obscureText = !_obscureText),
      ),
    );
  }
}
