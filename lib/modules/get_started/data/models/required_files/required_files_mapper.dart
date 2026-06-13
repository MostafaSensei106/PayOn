import '../../../logic/entities/register_entities.dart';
import 'get_required_files_response_body.dart';

extension RequiredFileModelMapper on RequiredFileModel {
  RequiredFileEntity toEntity() {
    return RequiredFileEntity(id: id, name: fileName, isRequired: isMandatory);
  }
}
