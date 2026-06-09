import 'package:json_annotation/json_annotation.dart';

import '../../../logic/entity/create_tracnsaction_draft_entity.dart';

part 'create_transaction_draft_response_body.g.dart';

@JsonSerializable()
class CreateTransactionDraftResponseBody {
  const CreateTransactionDraftResponseBody();

  factory CreateTransactionDraftResponseBody.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateTransactionDraftResponseBodyFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateTransactionDraftResponseBodyToJson(this);
}

extension CreateTransactionDraftMapper on CreateTransactionDraftResponseBody {
  CreateTracnsactionDraftEntity toEntity() {
    return const CreateTracnsactionDraftEntity();
  }
}
