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

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

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

  /// No description provided for @error_cant_be_empty.
  ///
  /// In en, this message translates to:
  /// **'This field cannot be empty'**
  String get error_cant_be_empty;

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

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @description_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter description (optional)'**
  String get description_hint;

  /// No description provided for @confirm_transaction.
  ///
  /// In en, this message translates to:
  /// **'Confirm Transaction'**
  String get confirm_transaction;

  /// No description provided for @confirm_transaction_body.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to send {amount} to {name}?'**
  String confirm_transaction_body(Object amount, Object name);

  /// No description provided for @enter_pin.
  ///
  /// In en, this message translates to:
  /// **'Enter your PIN'**
  String get enter_pin;

  /// No description provided for @fees.
  ///
  /// In en, this message translates to:
  /// **'Fees'**
  String get fees;

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get total_amount;

  /// No description provided for @transaction_details.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get transaction_details;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @transaction_type.
  ///
  /// In en, this message translates to:
  /// **'Transaction Type'**
  String get transaction_type;

  /// No description provided for @reference_number.
  ///
  /// In en, this message translates to:
  /// **'Reference Number'**
  String get reference_number;

  /// No description provided for @adjusted_amount.
  ///
  /// In en, this message translates to:
  /// **'Adjusted Amount'**
  String get adjusted_amount;

  /// No description provided for @balance_after_transaction.
  ///
  /// In en, this message translates to:
  /// **'Balance After Transaction'**
  String get balance_after_transaction;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get payment_method;

  /// No description provided for @common_questions.
  ///
  /// In en, this message translates to:
  /// **'Common Questions'**
  String get common_questions;

  /// No description provided for @developer_team.
  ///
  /// In en, this message translates to:
  /// **'Developer Team'**
  String get developer_team;

  /// No description provided for @pp_last_updated.
  ///
  /// In en, this message translates to:
  /// **'Last Updated: June 2026'**
  String get pp_last_updated;

  /// No description provided for @pp_section1_title.
  ///
  /// In en, this message translates to:
  /// **'1. Introduction'**
  String get pp_section1_title;

  /// No description provided for @pp_section1_content.
  ///
  /// In en, this message translates to:
  /// **'Welcome to PayOn. We are committed to protecting your personal information and your right to privacy. If you have any questions or concerns about our policy, or our practices with regards to your personal information, please contact us at privacy@payon.com.'**
  String get pp_section1_content;

  /// No description provided for @pp_section2_title.
  ///
  /// In en, this message translates to:
  /// **'2. Information We Collect'**
  String get pp_section2_title;

  /// No description provided for @pp_section2_content.
  ///
  /// In en, this message translates to:
  /// **'We collect personal information that you voluntarily provide to us when registering at the App, expressing an interest in obtaining information about us or our products and services. This includes identifiers (Name, DOB, SSN), financial information (Bank details, transaction history), and device data.'**
  String get pp_section2_content;

  /// No description provided for @pp_section3_title.
  ///
  /// In en, this message translates to:
  /// **'3. KYC & AML Compliance'**
  String get pp_section3_title;

  /// No description provided for @pp_section3_content.
  ///
  /// In en, this message translates to:
  /// **'As a financial service provider, we are legally required to verify the identity of our users to prevent money laundering and terrorist financing. This involves collecting government-issued IDs and performing background checks.'**
  String get pp_section3_content;

  /// No description provided for @pp_section4_title.
  ///
  /// In en, this message translates to:
  /// **'4. Purpose of Processing'**
  String get pp_section4_title;

  /// No description provided for @pp_section4_content.
  ///
  /// In en, this message translates to:
  /// **'We process your information for purposes based on legitimate business interests, the fulfillment of our contract with you, compliance with our legal obligations, and/or your consent.'**
  String get pp_section4_content;

  /// No description provided for @pp_section5_title.
  ///
  /// In en, this message translates to:
  /// **'5. Data Sharing'**
  String get pp_section5_title;

  /// No description provided for @pp_section5_content.
  ///
  /// In en, this message translates to:
  /// **'We only share information with your consent, to comply with laws, to provide you with services, to protect your rights, or to fulfill business obligations. This includes sharing with banking partners and payment processors like Stripe.'**
  String get pp_section5_content;

  /// No description provided for @pp_section6_title.
  ///
  /// In en, this message translates to:
  /// **'6. Data Retention'**
  String get pp_section6_title;

  /// No description provided for @pp_section6_content.
  ///
  /// In en, this message translates to:
  /// **'We will only keep your personal information for as long as it is necessary for the purposes set out in this privacy policy, unless a longer retention period is required or permitted by law (such as tax, accounting or other legal requirements).'**
  String get pp_section6_content;

  /// No description provided for @pp_section7_title.
  ///
  /// In en, this message translates to:
  /// **'7. Security Measures'**
  String get pp_section7_title;

  /// No description provided for @pp_section7_content.
  ///
  /// In en, this message translates to:
  /// **'We use appropriate technical and organizational security measures including AES-256 encryption and multi-factor authentication to protect the security of any personal information we process.'**
  String get pp_section7_content;

  /// No description provided for @pp_section8_title.
  ///
  /// In en, this message translates to:
  /// **'8. User Rights (GDPR/CCPA)'**
  String get pp_section8_title;

  /// No description provided for @pp_section8_content.
  ///
  /// In en, this message translates to:
  /// **'Depending on your location, you may have rights such as the right to access, rectify, or delete your personal data, as well as the right to data portability and to object to certain processing.'**
  String get pp_section8_content;

  /// No description provided for @pp_section9_title.
  ///
  /// In en, this message translates to:
  /// **'9. International Transfers'**
  String get pp_section9_title;

  /// No description provided for @pp_section9_content.
  ///
  /// In en, this message translates to:
  /// **'Our servers are located in various regions globally. If you are accessing our App from outside these regions, please be aware that your information may be transferred to, stored, and processed by us in our facilities.'**
  String get pp_section9_content;

  /// No description provided for @pp_section10_title.
  ///
  /// In en, this message translates to:
  /// **'10. Cookies and Tracking'**
  String get pp_section10_title;

  /// No description provided for @pp_section10_content.
  ///
  /// In en, this message translates to:
  /// **'We use cookies and similar tracking technologies to access or store information. Specific information about how we use such technologies and how you can refuse certain cookies is set out in our Cookie Notice.'**
  String get pp_section10_content;

  /// No description provided for @pp_section11_title.
  ///
  /// In en, this message translates to:
  /// **'11. Third-Party Websites'**
  String get pp_section11_title;

  /// No description provided for @pp_section11_content.
  ///
  /// In en, this message translates to:
  /// **'The App may contain advertisements from third parties that are not affiliated with us and which may link to other websites, online services or mobile applications. We cannot guarantee the safety and privacy of data you provide to any third parties.'**
  String get pp_section11_content;

  /// No description provided for @pp_section12_title.
  ///
  /// In en, this message translates to:
  /// **'12. Privacy Rights for Minors'**
  String get pp_section12_title;

  /// No description provided for @pp_section12_content.
  ///
  /// In en, this message translates to:
  /// **'We do not knowingly solicit data from or market to children under 18 years of age. By using the App, you represent that you are at least 18 or that you are the parent or guardian of such a minor and consent to such minor dependent’s use of the App.'**
  String get pp_section12_content;

  /// No description provided for @pp_section13_title.
  ///
  /// In en, this message translates to:
  /// **'13. California Privacy Rights'**
  String get pp_section13_title;

  /// No description provided for @pp_section13_content.
  ///
  /// In en, this message translates to:
  /// **'California Civil Code Section 1798.83, also known as the \'Shine The Light\' law, permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information we disclosed to third parties for direct marketing purposes.'**
  String get pp_section13_content;

  /// No description provided for @pp_section14_title.
  ///
  /// In en, this message translates to:
  /// **'14. Policy Updates'**
  String get pp_section14_title;

  /// No description provided for @pp_section14_content.
  ///
  /// In en, this message translates to:
  /// **'We may update this privacy policy from time to time. The updated version will be indicated by an updated \'Revised\' date and the updated version will be effective as soon as it is accessible.'**
  String get pp_section14_content;

  /// No description provided for @pp_section15_title.
  ///
  /// In en, this message translates to:
  /// **'15. Contact Us about this Policy'**
  String get pp_section15_title;

  /// No description provided for @pp_section15_content.
  ///
  /// In en, this message translates to:
  /// **'If you have questions or comments about this policy, you may email us at privacy@payon.com or by post to: PayOn Inc., 123 Finance Plaza, Suite 400, New York, NY 10001.'**
  String get pp_section15_content;

  /// No description provided for @faq_cat_general.
  ///
  /// In en, this message translates to:
  /// **'General Questions'**
  String get faq_cat_general;

  /// No description provided for @faq_cat_security.
  ///
  /// In en, this message translates to:
  /// **'Security & Privacy'**
  String get faq_cat_security;

  /// No description provided for @faq_cat_transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions & Limits'**
  String get faq_cat_transactions;

  /// No description provided for @faq_q1_title.
  ///
  /// In en, this message translates to:
  /// **'What is PayOn?'**
  String get faq_q1_title;

  /// No description provided for @faq_q1_answer.
  ///
  /// In en, this message translates to:
  /// **'PayOn is a next-generation mobile wallet designed for instant and secure financial transactions globally.'**
  String get faq_q1_answer;

  /// No description provided for @faq_q2_title.
  ///
  /// In en, this message translates to:
  /// **'Is my money safe?'**
  String get faq_q2_title;

  /// No description provided for @faq_q2_answer.
  ///
  /// In en, this message translates to:
  /// **'Yes, your funds are held in regulated partner banks and protected by state-of-the-art encryption and security protocols.'**
  String get faq_q2_answer;

  /// No description provided for @faq_q3_title.
  ///
  /// In en, this message translates to:
  /// **'How do I verify my account?'**
  String get faq_q3_title;

  /// No description provided for @faq_q3_answer.
  ///
  /// In en, this message translates to:
  /// **'You can verify your account by uploading a clear photo of your National ID or Passport in the \'Tier Verification\' section of your profile.'**
  String get faq_q3_answer;

  /// No description provided for @faq_q4_title.
  ///
  /// In en, this message translates to:
  /// **'What are the transfer limits?'**
  String get faq_q4_title;

  /// No description provided for @faq_q4_answer.
  ///
  /// In en, this message translates to:
  /// **'Limits vary by verification tier. Tier 1 users have daily limits of \$500, while Tier 3 users can enjoy unlimited transactions.'**
  String get faq_q4_answer;

  /// No description provided for @faq_q5_title.
  ///
  /// In en, this message translates to:
  /// **'Can I cancel a transaction?'**
  String get faq_q5_title;

  /// No description provided for @faq_q5_answer.
  ///
  /// In en, this message translates to:
  /// **'Once a transaction is confirmed and processed, it cannot be reversed. Please double-check the recipient\'s details before confirming.'**
  String get faq_q5_answer;

  /// No description provided for @faq_q6_title.
  ///
  /// In en, this message translates to:
  /// **'Does PayOn work internationally?'**
  String get faq_q6_title;

  /// No description provided for @faq_q6_answer.
  ///
  /// In en, this message translates to:
  /// **'Yes, PayOn supports cross-border payments in multiple currencies with real-time exchange rates.'**
  String get faq_q6_answer;

  /// No description provided for @faq_q7_title.
  ///
  /// In en, this message translates to:
  /// **'What if I lose my phone?'**
  String get faq_q7_title;

  /// No description provided for @faq_q7_answer.
  ///
  /// In en, this message translates to:
  /// **'Your account is tied to your identity, not just the device. You can log in from another device and instantly disable the old session for security.'**
  String get faq_q7_answer;

  /// No description provided for @faq_q8_title.
  ///
  /// In en, this message translates to:
  /// **'Are there any hidden fees?'**
  String get faq_q8_title;

  /// No description provided for @faq_q8_answer.
  ///
  /// In en, this message translates to:
  /// **'No, we believe in full transparency. All fees are clearly displayed on the confirmation screen before you authorize any payment.'**
  String get faq_q8_answer;

  /// No description provided for @faq_q9_title.
  ///
  /// In en, this message translates to:
  /// **'How do I contact support?'**
  String get faq_q9_title;

  /// No description provided for @faq_q9_answer.
  ///
  /// In en, this message translates to:
  /// **'Our support team is available 24/7 via the \'Contact Us\' page or through live chat within the app.'**
  String get faq_q9_answer;

  /// No description provided for @faq_q10_title.
  ///
  /// In en, this message translates to:
  /// **'Is PayOn regulated?'**
  String get faq_q10_title;

  /// No description provided for @faq_q10_answer.
  ///
  /// In en, this message translates to:
  /// **'Yes, PayOn operates under strict financial regulations and holds the necessary licenses in all jurisdictions where it provides services.'**
  String get faq_q10_answer;

  /// No description provided for @faq_q11_title.
  ///
  /// In en, this message translates to:
  /// **'How do I change my account password?'**
  String get faq_q11_title;

  /// No description provided for @faq_q11_answer.
  ///
  /// In en, this message translates to:
  /// **'Go to \'Settings\' > \'Security\' > \'Change Password\'. You will need to enter your current password followed by your new password twice.'**
  String get faq_q11_answer;

  /// No description provided for @faq_q12_title.
  ///
  /// In en, this message translates to:
  /// **'What should I do if my payment failed?'**
  String get faq_q12_title;

  /// No description provided for @faq_q12_answer.
  ///
  /// In en, this message translates to:
  /// **'If a payment fails, first check your internet connection and balance. If the issue persists, check the \'History\' tab for a specific error code or contact support.'**
  String get faq_q12_answer;

  /// No description provided for @faq_q13_title.
  ///
  /// In en, this message translates to:
  /// **'Can I have multiple wallets?'**
  String get faq_q13_title;

  /// No description provided for @faq_q13_answer.
  ///
  /// In en, this message translates to:
  /// **'Currently, PayOn supports one primary wallet per verified identity to comply with financial regulations and ensure maximum security.'**
  String get faq_q13_answer;

  /// No description provided for @faq_q14_title.
  ///
  /// In en, this message translates to:
  /// **'How do I update my personal information?'**
  String get faq_q14_title;

  /// No description provided for @faq_q14_answer.
  ///
  /// In en, this message translates to:
  /// **'Basic info can be updated in \'Edit Profile\'. For sensitive data like your name or ID, you must contact our compliance team for verification.'**
  String get faq_q14_answer;

  /// No description provided for @faq_q15_title.
  ///
  /// In en, this message translates to:
  /// **'How do I close my PayOn account?'**
  String get faq_q15_title;

  /// No description provided for @faq_q15_answer.
  ///
  /// In en, this message translates to:
  /// **'To close your account, please ensure your balance is zero and contact support. Note that financial data must be retained for 7 years by law.'**
  String get faq_q15_answer;

  /// No description provided for @contact_us_address.
  ///
  /// In en, this message translates to:
  /// **'123 Finance Plaza, Suite 400, New York, NY 10001'**
  String get contact_us_address;

  /// No description provided for @contact_us_phone.
  ///
  /// In en, this message translates to:
  /// **'+1 (800) 123-4567'**
  String get contact_us_phone;

  /// No description provided for @contact_us_email.
  ///
  /// In en, this message translates to:
  /// **'support@payon.com'**
  String get contact_us_email;

  /// No description provided for @contact_us_hours.
  ///
  /// In en, this message translates to:
  /// **'Monday - Friday: 9am - 6pm EST'**
  String get contact_us_hours;

  /// No description provided for @social_linkedin.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get social_linkedin;

  /// No description provided for @social_twitter.
  ///
  /// In en, this message translates to:
  /// **'Twitter'**
  String get social_twitter;

  /// No description provided for @social_github.
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get social_github;

  /// No description provided for @dev_team_mission.
  ///
  /// In en, this message translates to:
  /// **'Driven by innovation, our team is dedicated to building the future of digital finance with security and user experience at the core.'**
  String get dev_team_mission;

  /// No description provided for @dev_member1_name.
  ///
  /// In en, this message translates to:
  /// **'Ahmed Mohamed'**
  String get dev_member1_name;

  /// No description provided for @dev_member1_role.
  ///
  /// In en, this message translates to:
  /// **'Lead Software Engineer'**
  String get dev_member1_role;

  /// No description provided for @dev_member1_bio.
  ///
  /// In en, this message translates to:
  /// **'Ahmed is a visionary leader with over 10 years of experience in Fintech, focused on scaling secure architectural solutions.'**
  String get dev_member1_bio;

  /// No description provided for @dev_member2_name.
  ///
  /// In en, this message translates to:
  /// **'Sarah Hassan'**
  String get dev_member2_name;

  /// No description provided for @dev_member2_role.
  ///
  /// In en, this message translates to:
  /// **'Senior Mobile Developer'**
  String get dev_member2_role;

  /// No description provided for @dev_member2_bio.
  ///
  /// In en, this message translates to:
  /// **'Sarah is a Flutter expert passionate about crafting pixel-perfect, performant mobile interfaces that users love.'**
  String get dev_member2_bio;

  /// No description provided for @dev_member3_name.
  ///
  /// In en, this message translates to:
  /// **'John Doe'**
  String get dev_member3_name;

  /// No description provided for @dev_member3_role.
  ///
  /// In en, this message translates to:
  /// **'Backend Architect'**
  String get dev_member3_role;

  /// No description provided for @dev_member3_bio.
  ///
  /// In en, this message translates to:
  /// **'John specializes in high-concurrency systems and distributed databases, ensuring PayOn\'s backbone is indestructible.'**
  String get dev_member3_bio;

  /// No description provided for @dev_member4_name.
  ///
  /// In en, this message translates to:
  /// **'Layla Ali'**
  String get dev_member4_name;

  /// No description provided for @dev_member4_role.
  ///
  /// In en, this message translates to:
  /// **'UI/UX Designer'**
  String get dev_member4_role;

  /// No description provided for @dev_member4_bio.
  ///
  /// In en, this message translates to:
  /// **'Layla brings a human-centric approach to finance, designing intuitive flows that make complex actions feel simple.'**
  String get dev_member4_bio;

  /// No description provided for @tc_last_updated.
  ///
  /// In en, this message translates to:
  /// **'Last Updated: June 2026'**
  String get tc_last_updated;

  /// No description provided for @tc_section1_title.
  ///
  /// In en, this message translates to:
  /// **'1. Introduction'**
  String get tc_section1_title;

  /// No description provided for @tc_section1_content.
  ///
  /// In en, this message translates to:
  /// **'Welcome to PayOn. These Terms and Conditions govern your use of our mobile application and services. By accessing or using PayOn, you agree to be bound by these terms.'**
  String get tc_section1_content;

  /// No description provided for @tc_section2_title.
  ///
  /// In en, this message translates to:
  /// **'2. Acceptance of Terms'**
  String get tc_section2_title;

  /// No description provided for @tc_section2_content.
  ///
  /// In en, this message translates to:
  /// **'By creating an account or using the App, you agree to these Terms and our Privacy Policy. If you do not agree, you must not use our services.'**
  String get tc_section2_content;

  /// No description provided for @tc_section3_title.
  ///
  /// In en, this message translates to:
  /// **'3. User Eligibility'**
  String get tc_section3_title;

  /// No description provided for @tc_section3_content.
  ///
  /// In en, this message translates to:
  /// **'You must be at least 18 years old to use PayOn. By using the App, you represent that you have the legal capacity to enter into a binding agreement.'**
  String get tc_section3_content;

  /// No description provided for @tc_section4_title.
  ///
  /// In en, this message translates to:
  /// **'4. Account Registration'**
  String get tc_section4_title;

  /// No description provided for @tc_section4_content.
  ///
  /// In en, this message translates to:
  /// **'You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account. You must provide accurate and complete information.'**
  String get tc_section4_content;

  /// No description provided for @tc_section5_title.
  ///
  /// In en, this message translates to:
  /// **'5. Transaction Rules'**
  String get tc_section5_title;

  /// No description provided for @tc_section5_content.
  ///
  /// In en, this message translates to:
  /// **'All transactions are final once processed. Users are responsible for verifying recipient details before confirming any payment or transfer.'**
  String get tc_section5_content;

  /// No description provided for @tc_section6_title.
  ///
  /// In en, this message translates to:
  /// **'6. Fees and Payments'**
  String get tc_section6_title;

  /// No description provided for @tc_section6_content.
  ///
  /// In en, this message translates to:
  /// **'We may charge fees for certain services. All applicable fees will be disclosed to you before you complete a transaction.'**
  String get tc_section6_content;

  /// No description provided for @tc_section7_title.
  ///
  /// In en, this message translates to:
  /// **'7. Prohibited Activities'**
  String get tc_section7_title;

  /// No description provided for @tc_section7_content.
  ///
  /// In en, this message translates to:
  /// **'You may not use PayOn for any illegal purposes, including money laundering, fraud, or the purchase of prohibited goods and services.'**
  String get tc_section7_content;

  /// No description provided for @tc_section8_title.
  ///
  /// In en, this message translates to:
  /// **'8. Intellectual Property'**
  String get tc_section8_title;

  /// No description provided for @tc_section8_content.
  ///
  /// In en, this message translates to:
  /// **'All content, features, and functionality on the App are the exclusive property of PayOn Inc. and are protected by international copyright and trademark laws.'**
  String get tc_section8_content;

  /// No description provided for @tc_section9_title.
  ///
  /// In en, this message translates to:
  /// **'9. User Content'**
  String get tc_section9_title;

  /// No description provided for @tc_section9_content.
  ///
  /// In en, this message translates to:
  /// **'You retain ownership of any data you upload, but you grant PayOn a license to use, store, and process such data to provide the services.'**
  String get tc_section9_content;

  /// No description provided for @tc_section10_title.
  ///
  /// In en, this message translates to:
  /// **'10. Third-Party Services'**
  String get tc_section10_title;

  /// No description provided for @tc_section10_content.
  ///
  /// In en, this message translates to:
  /// **'The App may integrate with third-party services. We are not responsible for the content or practices of these third parties.'**
  String get tc_section10_content;

  /// No description provided for @tc_section11_title.
  ///
  /// In en, this message translates to:
  /// **'11. Termination'**
  String get tc_section11_title;

  /// No description provided for @tc_section11_content.
  ///
  /// In en, this message translates to:
  /// **'We reserve the right to suspend or terminate your account at any time for violations of these Terms or suspicious activity.'**
  String get tc_section11_content;

  /// No description provided for @tc_section12_title.
  ///
  /// In en, this message translates to:
  /// **'12. Limitation of Liability'**
  String get tc_section12_title;

  /// No description provided for @tc_section12_content.
  ///
  /// In en, this message translates to:
  /// **'PayOn shall not be liable for any indirect, incidental, special, or consequential damages arising out of your use of the services.'**
  String get tc_section12_content;

  /// No description provided for @tc_section13_title.
  ///
  /// In en, this message translates to:
  /// **'13. Disclaimer of Warranties'**
  String get tc_section13_title;

  /// No description provided for @tc_section13_content.
  ///
  /// In en, this message translates to:
  /// **'The services are provided \'as is\' without any warranties of any kind, either express or implied.'**
  String get tc_section13_content;

  /// No description provided for @tc_section14_title.
  ///
  /// In en, this message translates to:
  /// **'14. Governing Law'**
  String get tc_section14_title;

  /// No description provided for @tc_section14_content.
  ///
  /// In en, this message translates to:
  /// **'These Terms shall be governed by and construed in accordance with the laws of the jurisdiction in which PayOn Inc. is registered.'**
  String get tc_section14_content;

  /// No description provided for @tc_section15_title.
  ///
  /// In en, this message translates to:
  /// **'15. Changes to Terms'**
  String get tc_section15_title;

  /// No description provided for @tc_section15_content.
  ///
  /// In en, this message translates to:
  /// **'We may update these Terms from time to time. Your continued use of the App after changes are posted constitutes acceptance of the new Terms.'**
  String get tc_section15_content;

  /// No description provided for @wallet_under_review.
  ///
  /// In en, this message translates to:
  /// **'Wallet under review'**
  String get wallet_under_review;

  /// No description provided for @wallet_under_review_desc.
  ///
  /// In en, this message translates to:
  /// **'Your wallet is currently under review. Please wait for approval.'**
  String get wallet_under_review_desc;
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
