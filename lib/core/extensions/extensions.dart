import 'package:flutter/widgets.dart';

import '../../l10n/app_localizations.dart';
import '../di/di.dart';
import '../services/l10n/l10n_service.dart';
import '../services/toast/base_toast_service.dart';

extension LocalizationExtensions on BuildContext {
  AppLocalizations get localKeys => getIt<L10nService>().get(this);
}

extension ToastExtensions on BuildContext {
  BaseToastService get toast => getIt<BaseToastService>();
}
