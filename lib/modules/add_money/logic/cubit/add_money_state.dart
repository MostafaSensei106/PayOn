import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/get_providers_response_body.dart';

part 'add_money_state.freezed.dart';

@freezed
class AddMoneyState with _$AddMoneyState {
  const factory AddMoneyState.initial() = _Initial;
  const factory AddMoneyState.loading() = Loading;
  const factory AddMoneyState.providersLoaded({
    required GetProvidersResponseBody response,
  }) = ProvidersLoaded;
  const factory AddMoneyState.failure({required String message}) = Failure;
}
