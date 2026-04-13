import 'package:flutter/widgets.dart';

import '../../../l10n/app_localizations.dart';

final class L10nService {
  AppLocalizations get(BuildContext context) => AppLocalizations.of(context)!;
  List<Locale> get supportedLocales => AppLocalizations.supportedLocales;
}
