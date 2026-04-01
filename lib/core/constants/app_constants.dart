/// A utility class that holds all the application-wide constants.
///
/// This includes app metadata, UI dimensions, and other fixed values
/// used throughout the application to ensure consistency.
class AppConstants {
  /// The official name of the application.
  static const String appName = 'TakyeebBak';

  /// The current version of the application.
  static const String appVersion = '1.0.0';

  /// A set of common free email service providers.
  static const freeEmailProviders = {
    'gmail.com',
    'googlemail.com',
    'yahoo.com',
    'ymail.com',
    'hotmail.com',
    'outlook.com',
    'live.com',
    'msn.com',
    'aol.com',
    'icloud.com',
    'mac.com',
    'me.com',
    'protonmail.com',
    'tutanota.com',
    'gmx.com',
    'zoho.com',
    'mail.com',
    'yandex.com',
    'yandex.ru',
    'inbox.ru',
    'bk.ru',
    'list.ru',
    'mail.ru',
    'rediffmail.com',
    'fastmail.com',
    'hushmail.com',
    'startmail.com',
    'pm.me',
  };

  /// Standard padding value used across the UI.
  static const double padding = 16.0;

  /// Half of the standard padding value, useful for smaller spacing.
  static const double paddingHalf = padding / 2;

  /// Quarter of the standard padding value.
  static const double paddingQuarter = padding / 4;

  /// Standard icon size used across the UI.
  static const double iconSize = 27.0;

  /// Smaller icon size for buttons with icons.
  static const double iconSizeSmall = 20.0;

  /// Standard margin value used across the UI.
  static const double margin = 8.0;

  /// Inner border radius value for UI elements.
  static const double inBorderRadius = 8.0;

  /// Outer border radius value for UI elements, derived from [inBorderRadius] and [paddingHalf].
  static const double outBorderRadius = inBorderRadius + paddingHalf;

  /// Round border radius (e.g., for SearchBar).
  static const double roundBorderRadius = 30.0;

  /// Standard height for buttons.
  static const double buttonHeight = 56.0;

  /// Standard elevation for elevated buttons.
  static const double buttonElevation = 2.0;

  /// Standard size for OTP input fields.
  static const double otpFieldSize = 60.0;

  /// Standard radius for avatars.
  static const double avatarRadius = 24.0;

  /// Default opacity for search bar background.
  static const double searchBarOpacity = 0.5;

  /// Default duration for toast messages in seconds.
  static const int toastDurationInSeconds = 4;
}
