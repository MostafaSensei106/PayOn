// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get welcome_title => 'أهلاً بك';

  @override
  String get send_money_title => 'أرسل المال فوراً';

  @override
  String get send_money_subtitle =>
      'أرسل الأموال إلى أصدقائك وعائلتك على الفور';

  @override
  String get secure_payments_title => 'مدفوعات آمنة';

  @override
  String get secure_payments_subtitle =>
      'معاملاتك محمية بأمان على مستوى البنوك';

  @override
  String get track_everything_title => 'تتبع كل شيء';

  @override
  String get track_everything_subtitle => 'راقب نفقاتك ومدخراتك';

  @override
  String get english => 'الإنجليزية';

  @override
  String get arabic => 'العربية';

  @override
  String get get_started => 'ابدأ الآن';

  @override
  String get login => 'تسجيل الدخول';
}
