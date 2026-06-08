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

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @send_money_instantly.
  ///
  /// In en, this message translates to:
  /// **'Send Money Instantly'**
  String get send_money_instantly;

  /// No description provided for @send_money_instantly_desc.
  ///
  /// In en, this message translates to:
  /// **'Send money to your friends and family instantly'**
  String get send_money_instantly_desc;

  /// No description provided for @secure_payments.
  ///
  /// In en, this message translates to:
  /// **'Secure Payments'**
  String get secure_payments;

  /// No description provided for @secure_payments_desc.
  ///
  /// In en, this message translates to:
  /// **'Your transactions are protected with bank-grade security'**
  String get secure_payments_desc;

  /// No description provided for @track_everything.
  ///
  /// In en, this message translates to:
  /// **'Track Everything'**
  String get track_everything;

  /// No description provided for @track_everything_desc.
  ///
  /// In en, this message translates to:
  /// **'Monitor your expenses and savings'**
  String get track_everything_desc;

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

  /// No description provided for @login_desc.
  ///
  /// In en, this message translates to:
  /// **'Login to your account to continue'**
  String get login_desc;

  /// No description provided for @email_address.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get email_address;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @biometric_auth.
  ///
  /// In en, this message translates to:
  /// **'Biometric Authentication'**
  String get biometric_auth;

  /// No description provided for @biometric_auth_desc.
  ///
  /// In en, this message translates to:
  /// **'Secure your account'**
  String get biometric_auth_desc;

  /// No description provided for @fingerprint_auth.
  ///
  /// In en, this message translates to:
  /// **'Fingerprint Authentication'**
  String get fingerprint_auth;

  /// No description provided for @fingerprint_auth_desc.
  ///
  /// In en, this message translates to:
  /// **'Use your fingerprint to authenticate'**
  String get fingerprint_auth_desc;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @face_id.
  ///
  /// In en, this message translates to:
  /// **'Face ID'**
  String get face_id;

  /// No description provided for @biometric_not_supported.
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication is not supported on this device or not enabled.'**
  String get biometric_not_supported;

  /// No description provided for @biometric_login_desc.
  ///
  /// In en, this message translates to:
  /// **'Use your fingerprint or face recognition to log in quickly and securely.'**
  String get biometric_login_desc;

  /// No description provided for @enable_biometric.
  ///
  /// In en, this message translates to:
  /// **'Enable Biometric Authentication'**
  String get enable_biometric;

  /// No description provided for @enable_biometric_desc.
  ///
  /// In en, this message translates to:
  /// **'Use your fingerprint or face recognition to log in'**
  String get enable_biometric_desc;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @date_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get date_of_birth;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @terms_and_conditions_desc.
  ///
  /// In en, this message translates to:
  /// **'Please read our terms and conditions carefully'**
  String get terms_and_conditions_desc;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgot_password;

  /// No description provided for @manage_finances.
  ///
  /// In en, this message translates to:
  /// **'Manage Your Finances\nEasily & Securely'**
  String get manage_finances;

  /// No description provided for @manage_finances_desc.
  ///
  /// In en, this message translates to:
  /// **'The most secure and fastest way to send and receive money globally.'**
  String get manage_finances_desc;

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

  /// No description provided for @qr_code.
  ///
  /// In en, this message translates to:
  /// **'QR Code'**
  String get qr_code;

  /// No description provided for @deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// No description provided for @withdraw.
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get withdraw;

  /// No description provided for @scan_qr_code.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scan_qr_code;

  /// No description provided for @user_name.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get user_name;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

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

  /// No description provided for @app_language.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get app_language;

  /// No description provided for @language_name.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language_name;

  /// No description provided for @language_desc.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language_desc;

  /// No description provided for @country_code.
  ///
  /// In en, this message translates to:
  /// **'GB'**
  String get country_code;

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

  /// No description provided for @remember_me.
  ///
  /// In en, this message translates to:
  /// **'Remember Me'**
  String get remember_me;

  /// No description provided for @login_with_fingerprint.
  ///
  /// In en, this message translates to:
  /// **'Login with Fingerprint'**
  String get login_with_fingerprint;

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

  /// No description provided for @send_money.
  ///
  /// In en, this message translates to:
  /// **'Send Money'**
  String get send_money;

  /// No description provided for @request_money.
  ///
  /// In en, this message translates to:
  /// **'Request Money'**
  String get request_money;

  /// No description provided for @receive_money.
  ///
  /// In en, this message translates to:
  /// **'Receive Money'**
  String get receive_money;

  /// No description provided for @search_here.
  ///
  /// In en, this message translates to:
  /// **'Search Here'**
  String get search_here;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @ipa.
  ///
  /// In en, this message translates to:
  /// **'IPA'**
  String get ipa;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

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

  /// No description provided for @account_type.
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get account_type;

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

  /// No description provided for @tier_1_verification.
  ///
  /// In en, this message translates to:
  /// **'Tier 1: Basic Verification'**
  String get tier_1_verification;

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

  /// No description provided for @tier_2_verification.
  ///
  /// In en, this message translates to:
  /// **'Tier 2: Identity Document'**
  String get tier_2_verification;

  /// No description provided for @national_id_passport.
  ///
  /// In en, this message translates to:
  /// **'National ID / Passport'**
  String get national_id_passport;

  /// No description provided for @no_security_alerts_for_you.
  ///
  /// In en, this message translates to:
  /// **'No security alerts for you'**
  String get no_security_alerts_for_you;

  /// No description provided for @no_security_alerts_for_you_desc.
  ///
  /// In en, this message translates to:
  /// **'We\'ll notify you if we detect any suspicious activity on your account.'**
  String get no_security_alerts_for_you_desc;

  /// No description provided for @no_notifications_yet.
  ///
  /// In en, this message translates to:
  /// **'No notifications yet'**
  String get no_notifications_yet;

  /// No description provided for @no_notifications_yet_des.
  ///
  /// In en, this message translates to:
  /// **'You\'ll see your notifications here once you have some.'**
  String get no_notifications_yet_des;

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

  /// No description provided for @tier_3_verification.
  ///
  /// In en, this message translates to:
  /// **'Tier 3: Address Verification'**
  String get tier_3_verification;

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

  /// No description provided for @accept_terms.
  ///
  /// In en, this message translates to:
  /// **'I accept the Terms and Conditions'**
  String get accept_terms;

  /// No description provided for @read_terms_desc.
  ///
  /// In en, this message translates to:
  /// **'Please read the Terms and Conditions'**
  String get read_terms_desc;

  /// No description provided for @accept_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'I accept the Privacy Policy'**
  String get accept_privacy_policy;

  /// No description provided for @accept_all.
  ///
  /// In en, this message translates to:
  /// **'Accept All'**
  String get accept_all;

  /// No description provided for @delete_account.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get delete_account;

  /// No description provided for @delete_account_desc.
  ///
  /// In en, this message translates to:
  /// **'this will permanently delete your account'**
  String get delete_account_desc;

  /// No description provided for @error_email_cant_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Email cannot be empty'**
  String get error_email_cant_be_empty;

  /// No description provided for @error_email_not_invalid_format.
  ///
  /// In en, this message translates to:
  /// **'Email format is invalid'**
  String get error_email_not_invalid_format;

  /// No description provided for @error_email_contains_invalid_characters.
  ///
  /// In en, this message translates to:
  /// **'Email contains invalid characters'**
  String get error_email_contains_invalid_characters;

  /// No description provided for @error_email_must_contain_at_symbol.
  ///
  /// In en, this message translates to:
  /// **'Email must contain @ symbol'**
  String get error_email_must_contain_at_symbol;

  /// No description provided for @error_email_must_be_in_lowercase.
  ///
  /// In en, this message translates to:
  /// **'Email must be in lower case'**
  String get error_email_must_be_in_lowercase;

  /// No description provided for @error_arabic_not_allowed.
  ///
  /// In en, this message translates to:
  /// **'Arabic characters are not allowed'**
  String get error_arabic_not_allowed;

  /// No description provided for @error_email_emoji_not_allowed.
  ///
  /// In en, this message translates to:
  /// **'Emojis are not allowed in email'**
  String get error_email_emoji_not_allowed;

  /// No description provided for @unverified_account.
  ///
  /// In en, this message translates to:
  /// **'Unverified Account'**
  String get unverified_account;

  /// No description provided for @error_full_name_cant_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Full name cannot be empty'**
  String get error_full_name_cant_be_empty;

  /// No description provided for @error_full_name_too_long_max_255_chars.
  ///
  /// In en, this message translates to:
  /// **'Full name is too long (maximum 255 characters)'**
  String get error_full_name_too_long_max_255_chars;

  /// No description provided for @error_full_name_invalid_characters.
  ///
  /// In en, this message translates to:
  /// **'Full name contains invalid characters'**
  String get error_full_name_invalid_characters;

  /// No description provided for @error_email_exists.
  ///
  /// In en, this message translates to:
  /// **'Email already exists'**
  String get error_email_exists;

  /// No description provided for @error_phone_number_cant_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Phone number cannot be empty'**
  String get error_phone_number_cant_be_empty;

  /// No description provided for @error_phone_number_invalid.
  ///
  /// In en, this message translates to:
  /// **'Phone number is invalid'**
  String get error_phone_number_invalid;

  /// No description provided for @error_email_not_found.
  ///
  /// In en, this message translates to:
  /// **'Email not found'**
  String get error_email_not_found;

  /// No description provided for @error_password_cant_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get error_password_cant_be_empty;

  /// No description provided for @error_password_empty.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get error_password_empty;

  /// No description provided for @error_password_too_short_min_8_chars.
  ///
  /// In en, this message translates to:
  /// **'Password is too short (minimum 8 characters)'**
  String get error_password_too_short_min_8_chars;

  /// No description provided for @error_username_empty.
  ///
  /// In en, this message translates to:
  /// **'User name cannot be empty'**
  String get error_username_empty;

  /// No description provided for @error_username_exists.
  ///
  /// In en, this message translates to:
  /// **'User name already exists'**
  String get error_username_exists;

  /// No description provided for @error_username_not_found.
  ///
  /// In en, this message translates to:
  /// **'User name not found'**
  String get error_username_not_found;

  /// No description provided for @error_username_invalid.
  ///
  /// In en, this message translates to:
  /// **'User name is not valid'**
  String get error_username_invalid;

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

  /// No description provided for @error_password_spaces.
  ///
  /// In en, this message translates to:
  /// **'Password cannot contain spaces'**
  String get error_password_spaces;

  /// No description provided for @error_username_arabic.
  ///
  /// In en, this message translates to:
  /// **'User name cannot contain Arabic characters'**
  String get error_username_arabic;

  /// No description provided for @error_username_too_long.
  ///
  /// In en, this message translates to:
  /// **'User name is too long (maximum 20 characters)'**
  String get error_username_too_long;

  /// No description provided for @error_username_too_short.
  ///
  /// In en, this message translates to:
  /// **'User name is too short (minimum 3 characters)'**
  String get error_username_too_short;

  /// No description provided for @error_username_spaces.
  ///
  /// In en, this message translates to:
  /// **'User name cannot contain spaces'**
  String get error_username_spaces;

  /// No description provided for @error_username_special_chars.
  ///
  /// In en, this message translates to:
  /// **'User name cannot contain special characters'**
  String get error_username_special_chars;

  /// No description provided for @error_username_emojis.
  ///
  /// In en, this message translates to:
  /// **'User name cannot contain emojis'**
  String get error_username_emojis;

  /// No description provided for @read_privacy_policy_desc.
  ///
  /// In en, this message translates to:
  /// **'Please read the Privacy Policy'**
  String get read_privacy_policy_desc;

  /// No description provided for @error_password_empty_alt.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get error_password_empty_alt;

  /// No description provided for @error_password_too_short.
  ///
  /// In en, this message translates to:
  /// **'Password is too short (minimum 8 characters)'**
  String get error_password_too_short;

  /// No description provided for @error_password_emojis.
  ///
  /// In en, this message translates to:
  /// **'Password cannot contain emojis'**
  String get error_password_emojis;

  /// No description provided for @error_password_invalid.
  ///
  /// In en, this message translates to:
  /// **'Password is not valid'**
  String get error_password_invalid;

  /// No description provided for @account_security.
  ///
  /// In en, this message translates to:
  /// **'Account & Security'**
  String get account_security;

  /// No description provided for @edit_profile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get edit_profile;

  /// No description provided for @edit_profile_desc.
  ///
  /// In en, this message translates to:
  /// **'Update your personal information and photo'**
  String get edit_profile_desc;

  /// No description provided for @change_password_desc.
  ///
  /// In en, this message translates to:
  /// **'Update your account\'s secret code'**
  String get change_password_desc;

  /// No description provided for @two_factor_auth.
  ///
  /// In en, this message translates to:
  /// **'Two-Factor Authentication (2FA)'**
  String get two_factor_auth;

  /// No description provided for @two_factor_auth_desc.
  ///
  /// In en, this message translates to:
  /// **'Add an extra layer of protection to your account'**
  String get two_factor_auth_desc;

  /// No description provided for @biometric_login.
  ///
  /// In en, this message translates to:
  /// **'Biometric Login'**
  String get biometric_login;

  /// No description provided for @biometric_login_desc_settings.
  ///
  /// In en, this message translates to:
  /// **'Enable fingerprint or face recognition'**
  String get biometric_login_desc_settings;

  /// No description provided for @security_alerts.
  ///
  /// In en, this message translates to:
  /// **'Security Alerts'**
  String get security_alerts;

  /// No description provided for @security_alerts_desc.
  ///
  /// In en, this message translates to:
  /// **'Notifications of unusual login attempts'**
  String get security_alerts_desc;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @appearance_desc.
  ///
  /// In en, this message translates to:
  /// **'System Default (Light/Dark)'**
  String get appearance_desc;

  /// No description provided for @notification_settings.
  ///
  /// In en, this message translates to:
  /// **'Notification Settings'**
  String get notification_settings;

  /// No description provided for @notification_settings_desc.
  ///
  /// In en, this message translates to:
  /// **'Control notifications and sounds'**
  String get notification_settings_desc;

  /// No description provided for @help_support.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get help_support;

  /// No description provided for @logout_desc.
  ///
  /// In en, this message translates to:
  /// **'Sign out of your account'**
  String get logout_desc;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @account_actions.
  ///
  /// In en, this message translates to:
  /// **'Account Actions'**
  String get account_actions;

  /// No description provided for @faq_desc.
  ///
  /// In en, this message translates to:
  /// **'Answers to the most frequently asked questions'**
  String get faq_desc;

  /// No description provided for @contact_us.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contact_us;

  /// No description provided for @contact_us_desc.
  ///
  /// In en, this message translates to:
  /// **'Support team is available to help you'**
  String get contact_us_desc;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @privacy_policy_desc.
  ///
  /// In en, this message translates to:
  /// **'How we protect your data'**
  String get privacy_policy_desc;

  /// No description provided for @about_app.
  ///
  /// In en, this message translates to:
  /// **'About App'**
  String get about_app;

  /// No description provided for @app_version.
  ///
  /// In en, this message translates to:
  /// **'Version 1.0.0'**
  String get app_version;

  /// No description provided for @about_developers.
  ///
  /// In en, this message translates to:
  /// **'About Developers'**
  String get about_developers;

  /// No description provided for @about_developers_desc.
  ///
  /// In en, this message translates to:
  /// **'Meet the development team'**
  String get about_developers_desc;

  /// No description provided for @app_appearance.
  ///
  /// In en, this message translates to:
  /// **'App Appearance'**
  String get app_appearance;

  /// No description provided for @light_mode.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light_mode;

  /// No description provided for @light_mode_desc.
  ///
  /// In en, this message translates to:
  /// **'Always use light appearance'**
  String get light_mode_desc;

  /// No description provided for @dark_mode.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark_mode;

  /// No description provided for @dark_mode_desc.
  ///
  /// In en, this message translates to:
  /// **'Always use dark appearance'**
  String get dark_mode_desc;

  /// No description provided for @system_mode.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system_mode;

  /// No description provided for @system_mode_desc.
  ///
  /// In en, this message translates to:
  /// **'Automatically change appearance based on device settings'**
  String get system_mode_desc;

  /// No description provided for @select_account.
  ///
  /// In en, this message translates to:
  /// **'Select Account'**
  String get select_account;

  /// No description provided for @primary_account.
  ///
  /// In en, this message translates to:
  /// **'Primary Account'**
  String get primary_account;

  /// No description provided for @secondary_account.
  ///
  /// In en, this message translates to:
  /// **'Secondary Account'**
  String get secondary_account;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @ipa_address.
  ///
  /// In en, this message translates to:
  /// **'IPA Address'**
  String get ipa_address;

  /// No description provided for @phone_number_hint.
  ///
  /// In en, this message translates to:
  /// **'01xxxxxxxxx'**
  String get phone_number_hint;

  /// No description provided for @ipa_hint.
  ///
  /// In en, this message translates to:
  /// **'username@payon'**
  String get ipa_hint;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @amount_hint.
  ///
  /// In en, this message translates to:
  /// **'0.00'**
  String get amount_hint;

  /// No description provided for @app_version_label.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get app_version_label;

  /// No description provided for @app_identity.
  ///
  /// In en, this message translates to:
  /// **'App Identity'**
  String get app_identity;

  /// No description provided for @about_app_desc.
  ///
  /// In en, this message translates to:
  /// **'App identity and environment details'**
  String get about_app_desc;

  /// No description provided for @app_name_label.
  ///
  /// In en, this message translates to:
  /// **'App Name'**
  String get app_name_label;

  /// No description provided for @package_name.
  ///
  /// In en, this message translates to:
  /// **'Package Name'**
  String get package_name;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @build_number.
  ///
  /// In en, this message translates to:
  /// **'Build Number'**
  String get build_number;

  /// No description provided for @operating_environment.
  ///
  /// In en, this message translates to:
  /// **'Operating Environment'**
  String get operating_environment;

  /// No description provided for @operating_system.
  ///
  /// In en, this message translates to:
  /// **'Operating System'**
  String get operating_system;

  /// No description provided for @os_version.
  ///
  /// In en, this message translates to:
  /// **'OS Version'**
  String get os_version;

  /// No description provided for @app_mode.
  ///
  /// In en, this message translates to:
  /// **'App Mode'**
  String get app_mode;

  /// No description provided for @built_with.
  ///
  /// In en, this message translates to:
  /// **'Built With'**
  String get built_with;

  /// No description provided for @release.
  ///
  /// In en, this message translates to:
  /// **'Release'**
  String get release;

  /// No description provided for @debug.
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get debug;

  /// No description provided for @dart_sdk.
  ///
  /// In en, this message translates to:
  /// **'Dart Language'**
  String get dart_sdk;

  /// No description provided for @flutter_sdk.
  ///
  /// In en, this message translates to:
  /// **'Flutter Framework'**
  String get flutter_sdk;

  /// No description provided for @install_info.
  ///
  /// In en, this message translates to:
  /// **'Installation Information'**
  String get install_info;

  /// No description provided for @installer_store.
  ///
  /// In en, this message translates to:
  /// **'Installer Store'**
  String get installer_store;

  /// No description provided for @install_date.
  ///
  /// In en, this message translates to:
  /// **'Install Date'**
  String get install_date;

  /// No description provided for @update_date.
  ///
  /// In en, this message translates to:
  /// **'Update Date'**
  String get update_date;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @security_and_privacy.
  ///
  /// In en, this message translates to:
  /// **'Security & Privacy'**
  String get security_and_privacy;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get change_password;

  /// No description provided for @update_login_credentials.
  ///
  /// In en, this message translates to:
  /// **'Update your login credentials'**
  String get update_login_credentials;

  /// No description provided for @sign_out.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get sign_out;

  /// No description provided for @securely_logout_account.
  ///
  /// In en, this message translates to:
  /// **'Securely log out of your account'**
  String get securely_logout_account;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @take_photo_camera.
  ///
  /// In en, this message translates to:
  /// **'Take a new photo using your camera'**
  String get take_photo_camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @choose_photo_gallery.
  ///
  /// In en, this message translates to:
  /// **'Choose an existing photo from your gallery'**
  String get choose_photo_gallery;

  /// No description provided for @remove_photo.
  ///
  /// In en, this message translates to:
  /// **'Remove Photo'**
  String get remove_photo;

  /// No description provided for @delete_profile_picture.
  ///
  /// In en, this message translates to:
  /// **'Delete your current profile picture'**
  String get delete_profile_picture;

  /// No description provided for @verified_account.
  ///
  /// In en, this message translates to:
  /// **'Verified Account'**
  String get verified_account;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @session_expired.
  ///
  /// In en, this message translates to:
  /// **'Session Expired'**
  String get session_expired;

  /// No description provided for @session_expired_description.
  ///
  /// In en, this message translates to:
  /// **'Your session has expired. Please login again to continue.'**
  String get session_expired_description;
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
