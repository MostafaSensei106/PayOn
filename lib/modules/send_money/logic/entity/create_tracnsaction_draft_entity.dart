import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_tracnsaction_draft_entity.freezed.dart';

@freezed
abstract class CreateTracnsactionDraftEntity
    with _$CreateTracnsactionDraftEntity {
  const factory CreateTracnsactionDraftEntity({
    required double fess,
    required List<int> draftIds,
    required String referenceNumber,
    required String originalCurrency,
    required double originalAmount,
    required double totalAmount,
    required String state,
    required String commissionPaidBy,
  }) = _CreateTracnsactionDraftEntity;
}
