import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_type_entity.freezed.dart';

@freezed
abstract class AccountTypeEntity with _$AccountTypeEntity {
  const factory AccountTypeEntity({
    required List<AccountTypeItemEntity> items,
    required int totalItems,
  }) = _AccountTypeEntity;
}

@freezed
abstract class AccountTypeItemEntity with _$AccountTypeItemEntity {
  const factory AccountTypeItemEntity({
    required int id,
    required String type,
    int? parentId,
  }) = _AccountTypeItemEntity;
}
