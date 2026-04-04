import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class APIErrorModel {
  APIErrorModel({required this.code, required this.message});
  @JsonKey(name: 'status')
  final int code;
  @JsonKey(name: 'title')
  final String? message;

  // ignore: sort_constructors_first
  factory APIErrorModel.fromJson(Map<String, dynamic> json) =>
      _$APIErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$APIErrorModelToJson(this);
}
