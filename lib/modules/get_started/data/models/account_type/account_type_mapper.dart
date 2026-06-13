import '../../../logic/entities/account_type_entity.dart';
import 'account_type_item.dart';
import 'account_type_response_body.dart';

extension AccountTypeResponseBodyMapper on AccountTypeResponseBody {
  AccountTypeEntity toEntity() {
    return AccountTypeEntity(
      items: data.items.map((item) => item.toEntity()).toList(),
      totalItems: data.totalItems,
    );
  }
}

extension AccountTypeItemMapper on AccountTypeItem {
  AccountTypeItemEntity toEntity() {
    return AccountTypeItemEntity(id: id, type: type, parentId: parentId);
  }
}
