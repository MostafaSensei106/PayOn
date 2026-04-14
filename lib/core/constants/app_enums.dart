import 'package:flutter/widgets.dart';

import '../di/di.dart';
import '../services/l10n/l10n_service.dart';

enum GenderType { male, female, none }

extension GenderExtension on GenderType {
  String nameWithL10n(BuildContext context) {
    final l10n = getIt<L10nService>().get(context);
    return switch (this) {
      GenderType.male => l10n.male,
      GenderType.female => l10n.female,
      GenderType.none => l10n.none,
    };
  }

  String get code {
    return switch (this) {
      GenderType.male => 'M',
      GenderType.female => 'F',
      GenderType.none => 'N',
    };
  }
}
