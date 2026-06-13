import 'package:json_annotation/json_annotation.dart';

part 'get_required_files_response_body.g.dart';

@JsonSerializable()
class GetRequiredFilesResponseBody {
  const GetRequiredFilesResponseBody({
    required this.code,
    required this.message,
    required this.success,
    required this.data,
  });

  factory GetRequiredFilesResponseBody.fromJson(Map<String, dynamic> json) =>
      _$GetRequiredFilesResponseBodyFromJson(json);

  final int code;
  final String message;
  final bool success;
  final RequiredFilesData data;

  Map<String, dynamic> toJson() => _$GetRequiredFilesResponseBodyToJson(this);
}

@JsonSerializable()
class RequiredFilesData {
  const RequiredFilesData({
    required this.totalItems,
    required this.pageNumber,
    required this.pageSize,
    required this.items,
    required this.totalPages,
  });

  factory RequiredFilesData.fromJson(Map<String, dynamic> json) =>
      _$RequiredFilesDataFromJson(json);

  final int totalItems;
  final int pageNumber;
  final int pageSize;
  final int totalPages;
  final List<RequiredFileModel> items;

  Map<String, dynamic> toJson() => _$RequiredFilesDataToJson(this);
}

@JsonSerializable()
class RequiredFileModel {
  const RequiredFileModel({
    required this.id,
    required this.fileName,
    required this.isMandatory,
  });

  factory RequiredFileModel.fromJson(Map<String, dynamic> json) =>
      _$RequiredFileModelFromJson(json);

  final int id;
  final String fileName;
  final bool isMandatory;

  Map<String, dynamic> toJson() => _$RequiredFileModelToJson(this);
}
