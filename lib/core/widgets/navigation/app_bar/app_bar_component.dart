import 'package:flutter/material.dart';

/// A custom app bar widget with a transparent background and a centered title.
class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  /// Creates an [AppBarComponent].
  ///
  /// The [title] parameter is required.
  const AppBarComponent({required this.title, super.key});

  /// The title to display in the app bar.
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(final BuildContext context) => AppBar(
    elevation: 0,
    title: Text(title),
    centerTitle: true,
    scrolledUnderElevation: 0,
  );
}
