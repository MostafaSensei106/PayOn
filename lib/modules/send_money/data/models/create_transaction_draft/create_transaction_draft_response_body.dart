import 'package:json_annotation/json_annotation.dart';

import '../../../logic/entity/create_tracnsaction_draft_entity.dart';

part 'create_transaction_draft_response_body.g.dart';

@JsonSerializable()
class CreateTransactionDraftResponseBody {}

extension CreateTransactionDraftMapper on CreateTransactionDraftResponseBody {
  CreateTracnsactionDraftEntity toEntity() {
    return const CreateTracnsactionDraftEntity();
  }
}
