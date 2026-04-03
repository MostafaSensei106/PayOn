import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../text_field/text_field_component.dart';

class PasswordFieldComponent extends StatefulWidget {
  const PasswordFieldComponent({
    required this.label,
    super.key,
    this.controller,
  });
  final String label;
  final TextEditingController? controller;

  @override
  State<PasswordFieldComponent> createState() => _PasswordFieldComponentState();
}

class _PasswordFieldComponentState extends State<PasswordFieldComponent> {
  bool _obscureText = true;

  @override
  Widget build(final BuildContext context) => TextFieldComponent(
    label: widget.label,
    controller: widget.controller,
    prefixIcon: Iconsax.lock_1_copy,
    obscureText: _obscureText,
    suffixIcon: IconButton(
      icon: Icon(_obscureText ? Iconsax.eye_copy : Iconsax.eye_slash_copy),
      onPressed: () => setState(() => _obscureText = !_obscureText),
    ),
  );
}
