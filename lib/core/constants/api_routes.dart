final class ApiRoutes {
  static const String apiBaseURL =
      'https://zeinahmed-001-site1.mtempurl.com/api/';

  /// Auth
  static const String authCheckUserExists = 'Auth/CheckUserExists';
  static const String authLogin = 'Auth/Login';
  static const String authLogout = 'Auth/Logout';
  static const String authRegister = 'Auth/Register';
  static const String authAssignRolesToUsers = 'Auth/AssignRoleToUsers';
  static const String authGetRoles = 'Auth/GetRoles';
  static const String authSwitchToMerchantRole = 'Auth/SwitchToMerchantRole';
  static const String authRestPassword = 'Auth/RestPassword';
  static const String authChangePassword = 'Auth/ChangePassword';
  static const String authSendOTP = 'Auth/SendOTP';
  static const String authVerifyOTP = 'Auth/VerifyOTP';
  static const String authVerifySecondOTP = 'Auth/VerifySecondOTP';

  /// Invitation
  static const String invitationSend = 'invitation/send';
  static const String invitationGet = 'invitation/validate';

  /// Profile
  static const String profileEditUserProfile = 'Profile/EditUserProfile';
  static const String profileUploadImage = 'Profile/UploadImage';
  static const String profileUpdateUser = 'Profile/updateUser';

  /// SafeGuard
  static const String safeGuardCreatSafeGuardTransaction =
      'SafeGuard/CreateSafeGuardTransaction';
  static const String safeGuardGetSafeGuardTransactions =
      'SafeGuard/GetSafeGuardTransactions';
  static const String safeGuardGetSafeGuardTransactionStats =
      'SafeGuard/GetSafeGuardTransactionStats';

  ///Services
  static const String serviceGetProvidersAsync = 'Services/GetProvidersAsync';

  /// Transaction
  static const String transactionCreateTransactionDraft =
      'Transaction/CreateTransactionDraft';
  static const String transactionCreateClientPayment =
      'Transaction/CreateClientPayment';
  static const String transactionCreatePayment = 'Transaction/CreatePayment';
  static const String transactionCreateAuthorizedPayment =
      'Transaction/CreateAuthorizedPayment';
  static const String transactionUpdatePaymentLink =
      'Transaction/UpdatePaymentLink';
  static const String transactionGetMerchanOrders =
      'Transaction/GetMechanOrders';
  static const String transactionGetPaymentDetails =
      'Transaction/GetPaymentDetails';
  static const String transactionGetPaymentDetailsMoblie =
      'Transaction/GetPaymentDetailsMobile';
  static const String transactionCreateTransactionDraftForPayment =
      'Transaction/CreateTransactionDraftForPayment';
  static const String transactionCheckWalletPinForPayment =
      'Transaction/CheckWalletPinForPayment';
  static const String transactionSavePayment = 'Transaction/SavePayment';
  static const String transactionSaveTransaction =
      'Transaction/SaveTransaction';
  static const String transactionRequestPayment = 'Transaction/RequestPayment';
  static const String transactionCheckWalletPin = 'Transaction/CheckWalletPin';
  static const String transactionGetTransactions =
      'Transaction/GetTransactions';
  static const String transactionCheckWallet = 'Transaction/CheckWallet';
  static const String transactionGetTransactionsTypes =
      'Transaction/GetTransactionsTypes';
  static const String transactionGetTransactionsAdmin =
      'Transaction/GetTransactionsAdmin';
  static const String transactionGetTransactionDraftsAdmin =
      'Transaction/GetTransactionDraftsAdmin';
  static const String transactionGetAllTransactions =
      'Transaction/GetAllTransactions';
  static const String transactionGetTransactionDraft =
      'Transaction/GetTransactionDraft';
  static const String transactionSetTransactionStatus =
      'Transaction/SetTransactionStatus';
  static const String transactionGetPendingTransactions =
      'Transaction/GetPendingTransactions';
  static const String transactionTopUsers = 'Transaction/TopUsers';
  static const String transactionTransactionStatistics =
      'Transaction/TransactionStatistics';
  static const String transactionMonthlyTransactionStatistics =
      'Transaction/MonthlyTransactionStatistics';
  static const String transactionGetNumberOfTransactions =
      'Transaction/GetNumberOfTransactions';
  static const String transactionGetNumberOfTransactionForAdmin =
      'Transaction/GetNumberOfTransactionForAdmin';
  static const String transactionGetNumberOfTransactionByWeak =
      'Transaction/GetNumberOfTransactionByWeak';
  static const String transactionGetTransactionStatesLastSixMonths =
      'Transaction/GetTransactionStatesLastSixMonths';
  static const String transactionGetTransactionsByPaymentMethod =
      'Transaction/GetTransactionsByPaymentMethod';
  static const String transactionGetTransactionsSummary =
      'Transaction/GetTransactionsSummary';
  static const String transactionGetAccountStatement =
      'Transaction/GetAccountStatement';
  static const String transactionTransactionTypeStatistics =
      'Transaction/TransactionTypeStatistics';
  static const String transactionMerchantAndAgentStatistics =
      'Transaction/MerchantAndAgentStatistics';
  static const String transactionGetExchangeRate =
      'Transaction/GetExchangeRate';
  static const String transactionCurrencyExchangeDraft =
      'Transaction/CurrencyExchangeDraft';
  static const String transactionBuyCurrency = 'Transaction/BuyCurrency';
  static const String transactionGetUserTransactionsGraph =
      'Transaction/GetUserTransactionsGraph';
  static const String transactionGetUserNumberOfTransactions =
      'Transaction/GetUserNumberOfTransactions';
  static const String transactionDeleteTransactionDrafts =
      'Transaction/DeleteTransactionDrafts';
}
