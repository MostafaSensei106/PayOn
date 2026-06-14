import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_type_entity.freezed.dart';

@freezed
abstract class AccountTypeEntity with _$AccountTypeEntity {
  const factory AccountTypeEntity({
    required int id,
    required String type,
    int? parentId,
  }) = _AccountTypeEntity;
}

@freezed
abstract class AccountTypeDataEntity with _$AccountTypeDataEntity {
  const factory AccountTypeDataEntity({
    required List<AccountTypeEntity> items,
    required int totalItems,
    required int pageNumber,
    required int pageSize,
    required int totalPages,
  }) = _AccountTypeDataEntity;
}
