class AccountModel {
  final String currencyName;
  final String symbol;
  final String balance;
  final String accountId;
  final String countryCode;

  AccountModel({
    required this.currencyName,
    required this.symbol,
    required this.balance,
    required this.accountId,
    required this.countryCode,
  });
}
