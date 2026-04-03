import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../../../constants/app_config.dart';

class SidePageSliverAppBarComponent extends StatelessWidget {
  const SidePageSliverAppBarComponent({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.pinned = false,
    this.floating = false,
    this.snap = false,
    this.expandedHeight,
    this.flexibleSpace,
    this.bottom,
    this.centerTitle = true,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool pinned;
  final bool floating;
  final bool snap;
  final double? expandedHeight;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final bool centerTitle;

  /// Navigates back to the previous screen with haptic feedback.
  void leave(final BuildContext context) {
    HapticFeedback.vibrate();
    context.pop();
  }

  /// Checks if the current locale is Arabic.
  ///
  /// Returns `true` if the language code is 'ar', otherwise `false`.
  bool cheakLocation(final BuildContext context) {
    final locale = Localizations.localeOf(context);
    final isArabic = locale.languageCode == 'ar';
    return isArabic;
  }

  @override
  Widget build(final BuildContext context) => SliverAppBar(
    title: title,
    leading: _buildSidePageAppBarIcon(
      context,
      cheakLocation(context)
          ? Icons.keyboard_double_arrow_right_rounded
          : Icons.keyboard_double_arrow_left_rounded,
    ),
    actions: actions,
    pinned: pinned,
    floating: floating,
    snap: snap,
    expandedHeight: expandedHeight,
    flexibleSpace: flexibleSpace,
    bottom: bottom,
    backgroundColor: Theme.of(context).colorScheme.surface,
    centerTitle: centerTitle,
    elevation: 0,
    scrolledUnderElevation: 0,
  );

  /// Builds the icon button for the app bar.
  Widget _buildSidePageAppBarIcon(
    final BuildContext context,
    final IconData icon,
  ) => IconButton.filled(
    style: IconButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.outBorderRadius),
      ),
      padding: const EdgeInsets.all(AppConfig.paddingQuarter),
    ),
    onPressed: () => leave(context),
    icon: Icon(icon, size: AppConfig.iconSize),
    color: Theme.of(context).colorScheme.onPrimaryContainer,
  );
}
