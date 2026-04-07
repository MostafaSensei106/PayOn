import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @welcome_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome_title;

  /// No description provided for @send_money_title.
  ///
  /// In en, this message translates to:
  /// **'Send Money Instantly'**
  String get send_money_title;

  /// No description provided for @send_money_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Send money to your friends and family instantly'**
  String get send_money_subtitle;

  /// No description provided for @secure_payments_title.
  ///
  /// In en, this message translates to:
  /// **'Secure Payments'**
  String get secure_payments_title;

  /// No description provided for @secure_payments_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Your transactions are protected with bank-grade security'**
  String get secure_payments_subtitle;

  /// No description provided for @track_everything_title.
  ///
  /// In en, this message translates to:
  /// **'Track Everything'**
  String get track_everything_title;

  /// No description provided for @track_everything_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Monitor your expenses and savings'**
  String get track_everything_subtitle;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get get_started;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @welcome_back.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back!'**
  String get welcome_back;

  /// No description provided for @login_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Login to your account to continue'**
  String get login_subtitle;

  /// No description provided for @email_address.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get email_address;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgot_password;

  /// No description provided for @manage_finances_title.
  ///
  /// In en, this message translates to:
  /// **'Manage Your Finances\nEasily & Securely'**
  String get manage_finances_title;

  /// No description provided for @manage_finances_subtitle.
  ///
  /// In en, this message translates to:
  /// **'The most secure and fastest way to send and receive money globally.'**
  String get manage_finances_subtitle;

  /// No description provided for @lets_get_started.
  ///
  /// In en, this message translates to:
  /// **'Let\'s Get Started'**
  String get lets_get_started;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @user_name.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get user_name;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @egyptian_pound.
  ///
  /// In en, this message translates to:
  /// **'Egyptian Pound'**
  String get egyptian_pound;

  /// No description provided for @us_dollar.
  ///
  /// In en, this message translates to:
  /// **'US Dollar'**
  String get us_dollar;

  /// No description provided for @saudi_riyal.
  ///
  /// In en, this message translates to:
  /// **'Saudi Riyal'**
  String get saudi_riyal;

  /// No description provided for @uae_dirham.
  ///
  /// In en, this message translates to:
  /// **'UAE Dirham'**
  String get uae_dirham;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @japanese_yen.
  ///
  /// In en, this message translates to:
  /// **'Japanese Yen'**
  String get japanese_yen;

  /// No description provided for @british_pound.
  ///
  /// In en, this message translates to:
  /// **'British Pound'**
  String get british_pound;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @request.
  ///
  /// In en, this message translates to:
  /// **'Request'**
  String get request;

  /// No description provided for @receive.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get receive;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @info.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get scan;

  /// No description provided for @top_up.
  ///
  /// In en, this message translates to:
  /// **'Top Up'**
  String get top_up;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @total_balance.
  ///
  /// In en, this message translates to:
  /// **'Total Balance'**
  String get total_balance;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @latest_transactions.
  ///
  /// In en, this message translates to:
  /// **'Latest Transactions'**
  String get latest_transactions;

  /// No description provided for @see_all.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get see_all;

  /// No description provided for @money_transfer.
  ///
  /// In en, this message translates to:
  /// **'Money Transfer'**
  String get money_transfer;

  /// No description provided for @first_name.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get first_name;

  /// No description provided for @last_name.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get last_name;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get terms_and_conditions;

  /// No description provided for @create_account.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get create_account;

  /// No description provided for @step.
  ///
  /// In en, this message translates to:
  /// **'Step'**
  String get step;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get off;

  /// No description provided for @please_wait.
  ///
  /// In en, this message translates to:
  /// **'Please Wait...'**
  String get please_wait;

  /// No description provided for @account_details.
  ///
  /// In en, this message translates to:
  /// **'Account Details'**
  String get account_details;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @tier_1_title.
  ///
  /// In en, this message translates to:
  /// **'Tier 1: Basic Verification'**
  String get tier_1_title;

  /// No description provided for @full_name_id.
  ///
  /// In en, this message translates to:
  /// **'Full Name (as in ID)'**
  String get full_name_id;

  /// No description provided for @dob.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dob;

  /// No description provided for @nationality.
  ///
  /// In en, this message translates to:
  /// **'Nationality'**
  String get nationality;

  /// No description provided for @tier_2_title.
  ///
  /// In en, this message translates to:
  /// **'Tier 2: Identity Document'**
  String get tier_2_title;

  /// No description provided for @national_id_passport.
  ///
  /// In en, this message translates to:
  /// **'National ID / Passport Number'**
  String get national_id_passport;

  /// No description provided for @personal_details.
  ///
  /// In en, this message translates to:
  /// **'Personal Details'**
  String get personal_details;

  /// No description provided for @upload_id.
  ///
  /// In en, this message translates to:
  /// **'Upload Government ID'**
  String get upload_id;

  /// No description provided for @tier_3_title.
  ///
  /// In en, this message translates to:
  /// **'Tier 3: Address Verification'**
  String get tier_3_title;

  /// No description provided for @residential_address.
  ///
  /// In en, this message translates to:
  /// **'Residential Address'**
  String get residential_address;

  /// No description provided for @upload_address_proof.
  ///
  /// In en, this message translates to:
  /// **'Upload Proof of Address'**
  String get upload_address_proof;

  /// No description provided for @otp_message.
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit code sent to your phone'**
  String get otp_message;

  /// No description provided for @otp_code.
  ///
  /// In en, this message translates to:
  /// **'OTP Code'**
  String get otp_code;

  /// No description provided for @code_expires_in.
  ///
  /// In en, this message translates to:
  /// **'Code expires in'**
  String get code_expires_in;

  /// No description provided for @resend_code.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resend_code;

  /// No description provided for @i_accept_terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'I accept the Terms and Conditions'**
  String get i_accept_terms_and_conditions;

  /// No description provided for @please_read_terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Please read the Terms and Conditions'**
  String get please_read_terms_and_conditions;

  /// No description provided for @i_accept_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'I accept the Privacy Policy'**
  String get i_accept_privacy_policy;

  /// No description provided for @accept_all.
  ///
  /// In en, this message translates to:
  /// **'Accept All'**
  String get accept_all;

  /// No description provided for @email_empty.
  ///
  /// In en, this message translates to:
  /// **'Email cannot be empty'**
  String get email_empty;

  /// No description provided for @email_missing_at_sign.
  ///
  /// In en, this message translates to:
  /// **'Email is missing @ sign'**
  String get email_missing_at_sign;

  /// No description provided for @email_invalid.
  ///
  /// In en, this message translates to:
  /// **'Email is invalid'**
  String get email_invalid;

  /// No description provided for @email_already_exists.
  ///
  /// In en, this message translates to:
  /// **'Email already exists'**
  String get email_already_exists;

  /// No description provided for @email_not_found.
  ///
  /// In en, this message translates to:
  /// **'Email not found'**
  String get email_not_found;

  /// No description provided for @email_not_lower_case.
  ///
  /// In en, this message translates to:
  /// **'Email must be in lower case'**
  String get email_not_lower_case;

  /// No description provided for @email_not_valid.
  ///
  /// In en, this message translates to:
  /// **'Email is not valid'**
  String get email_not_valid;

  /// No description provided for @email_missing_domain.
  ///
  /// In en, this message translates to:
  /// **'Email is missing domain'**
  String get email_missing_domain;

  /// No description provided for @email_missing_dot.
  ///
  /// In en, this message translates to:
  /// **'Email is missing .'**
  String get email_missing_dot;

  /// No description provided for @email_missing_extension.
  ///
  /// In en, this message translates to:
  /// **'Email is missing extension'**
  String get email_missing_extension;

  /// No description provided for @password_empty.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get password_empty;

  /// No description provided for @user_name_can_not_be_empty.
  ///
  /// In en, this message translates to:
  /// **'User name cannot be empty'**
  String get user_name_can_not_be_empty;

  /// No description provided for @user_name_already_exists.
  ///
  /// In en, this message translates to:
  /// **'User name already exists'**
  String get user_name_already_exists;

  /// No description provided for @user_name_not_found.
  ///
  /// In en, this message translates to:
  /// **'User name not found'**
  String get user_name_not_found;

  /// No description provided for @user_name_not_valid.
  ///
  /// In en, this message translates to:
  /// **'User name is not valid'**
  String get user_name_not_valid;

  /// No description provided for @payment_methods.
  ///
  /// In en, this message translates to:
  /// **'Payment Methods'**
  String get payment_methods;

  /// No description provided for @saved_cards.
  ///
  /// In en, this message translates to:
  /// **'Saved Cards'**
  String get saved_cards;

  /// No description provided for @add_card.
  ///
  /// In en, this message translates to:
  /// **'Add Card'**
  String get add_card;

  /// No description provided for @password_can_not_have_spaces.
  ///
  /// In en, this message translates to:
  /// **'Password cannot contain spaces'**
  String get password_can_not_have_spaces;

  /// No description provided for @user_name_arbic_not_allowed.
  ///
  /// In en, this message translates to:
  /// **'User name cannot contain Arabic characters'**
  String get user_name_arbic_not_allowed;

  /// No description provided for @user_name_is_too_long_max_20_characters.
  ///
  /// In en, this message translates to:
  /// **'User name is too long (maximum 20 characters)'**
  String get user_name_is_too_long_max_20_characters;

  /// No description provided for @user_name_is_too_short_min_3_characters.
  ///
  /// In en, this message translates to:
  /// **'User name is too short (minimum 3 characters)'**
  String get user_name_is_too_short_min_3_characters;

  /// No description provided for @user_name_can_not_have_spaces.
  ///
  /// In en, this message translates to:
  /// **'User name cannot contain spaces'**
  String get user_name_can_not_have_spaces;

  /// No description provided for @user_name_can_not_have_special_characters.
  ///
  /// In en, this message translates to:
  /// **'User name cannot contain special characters'**
  String get user_name_can_not_have_special_characters;

  /// No description provided for @user_name_can_not_have_emojis.
  ///
  /// In en, this message translates to:
  /// **'User name cannot contain emojis'**
  String get user_name_can_not_have_emojis;

  /// No description provided for @please_read_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Please read the Privacy Policy'**
  String get please_read_privacy_policy;

  /// No description provided for @password_can_not_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get password_can_not_be_empty;

  /// No description provided for @password_is_too_short_min_8_characters.
  ///
  /// In en, this message translates to:
  /// **'Password is too short (minimum 8 characters)'**
  String get password_is_too_short_min_8_characters;

  /// No description provided for @password_can_not_have_emojis.
  ///
  /// In en, this message translates to:
  /// **'Password cannot contain emojis'**
  String get password_can_not_have_emojis;

  /// No description provided for @password_not_valid.
  ///
  /// In en, this message translates to:
  /// **'Password is not valid'**
  String get password_not_valid;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
