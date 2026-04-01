import 'package:flutter/material.dart';

class LoadingIndicatorComponent extends StatelessWidget {
  final double? value;

  const LoadingIndicatorComponent({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        value: value,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
