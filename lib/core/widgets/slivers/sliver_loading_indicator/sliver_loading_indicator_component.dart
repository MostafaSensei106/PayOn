import 'package:flutter/material.dart';
import 'package:payon/core/widgets/feedback/loading_indicator/loading_indicator_component.dart';

class SliverLoadingIndicatorComponent extends StatelessWidget {
  final double? value;

  const SliverLoadingIndicatorComponent({
    super.key,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: LoadingIndicatorComponent(
        value: value,
      ),
    );
  }
}
