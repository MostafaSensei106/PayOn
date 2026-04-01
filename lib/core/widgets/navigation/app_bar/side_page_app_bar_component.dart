import 'package:flutter/material.dart'
    show kToolbarHeight, AppBar, Theme, Icons, IconButton, Localizations;
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter/widgets.dart'
    show
        StatelessWidget,
        PreferredSizeWidget,
        Size,
        BuildContext,
        Widget,
        IconData,
        EdgeInsets,
        Navigator,
        Text,
        BorderRadius,
        RoundedRectangleBorder,
        Icon;
import 'package:payon/core/constants/app_config.dart';

/// An app bar designed for side pages, with an optional back button and actions.
class SidePageAppBarComponent extends StatelessWidget
    implements PreferredSizeWidget {
  /// Creates a [SidePageAppBarComponent].
  ///
  /// The [title] is required. The [useBackButton] defaults to `false`.
  const SidePageAppBarComponent({
    required this.title,
    super.key,
    this.useBackButton = false,
    this.actions,
  });

  /// The title to display in the app bar.
  final String title;

  /// A flag to determine whether to show the back button.
  final bool useBackButton;

  /// A list of widgets to display as actions in the app bar.
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  /// Navigates back to the previous screen with haptic feedback.
  void leave(final BuildContext context) {
    HapticFeedback.vibrate();
    Navigator.pop(context);
  }

  /// Checks if the current locale is Arabic.
  ///
  /// Returns `true` if the language code is 'ar', otherwise `false`.
  bool cheakLocation(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final isArabic = locale.languageCode == 'ar';
    return isArabic;
  }

  @override
  Widget build(final BuildContext context) => AppBar(
    title: Text(title),
    centerTitle: true,
    scrolledUnderElevation: 0,
    elevation: 0,
    leading: useBackButton
        ? _buildSidePageAppBarIcon(
            context,
            cheakLocation(context)
                ? Icons.keyboard_double_arrow_right_rounded
                : Icons.keyboard_double_arrow_left_rounded,
          )
        : null,
    actions: actions,
  );

  /// Builds the icon button for the app bar.
  Widget _buildSidePageAppBarIcon(
    final BuildContext context,
    final IconData icon,
  ) => IconButton.filled(
    style: IconButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.inBorderRadius),
      ),
      padding: const EdgeInsets.all(AppConfig.paddingQuarter),
    ),
    onPressed: () => leave(context),
    icon: Icon(icon, size: AppConfig.iconSize),
    color: Theme.of(context).colorScheme.onPrimaryContainer,
  );
}
