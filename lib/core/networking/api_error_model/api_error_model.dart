import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
final class APIErrorModel {
  APIErrorModel({required this.code, required this.message});
  final int code;
  final String? message;

  // ignore: sort_constructors_first
  factory APIErrorModel.fromJson(Map<String, dynamic> json) =>
      _$APIErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$APIErrorModelToJson(this);
}
