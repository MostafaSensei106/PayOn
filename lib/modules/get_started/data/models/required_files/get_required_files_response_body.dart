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
  final List<RequiredFileModel> data;

  Map<String, dynamic> toJson() => _$GetRequiredFilesResponseBodyToJson(this);
}

@JsonSerializable()
class RequiredFileModel {
  const RequiredFileModel({
    required this.id,
    required this.name,
    required this.isRequired,
    this.description,
  });

  factory RequiredFileModel.fromJson(Map<String, dynamic> json) =>
      _$RequiredFileModelFromJson(json);

  final int id;
  final String name;
  final String? description;
  final bool isRequired;

  Map<String, dynamic> toJson() => _$RequiredFileModelToJson(this);
}
