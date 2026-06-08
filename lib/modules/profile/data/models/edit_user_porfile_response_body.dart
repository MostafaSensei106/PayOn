import 'package:json_annotation/json_annotation.dart';

part 'edit_user_porfile_response_body.g.dart';

@JsonSerializable()
class EditUserPorfileResponseBody {
  EditUserPorfileResponseBody({
    required this.code,
    required this.message,
    required this.data,
    required this.errors,
    required this.isSuccess,
  });

  factory EditUserPorfileResponseBody.fromJson(Map<String, dynamic> json) =>
      _$EditUserPorfileResponseBodyFromJson(json);

  final int code;
  final String message;
  final bool data;
  final List<String> errors;
  final bool isSuccess;
}
