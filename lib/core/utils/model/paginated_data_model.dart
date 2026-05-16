import 'package:json_annotation/json_annotation.dart';

part 'paginated_data_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
final class PaginatedDataModel<T> {
  PaginatedDataModel({
    required this.data,
    required this.currentPage,
    required this.totalPages,
  });

  factory PaginatedDataModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$PaginatedDataModelFromJson(json, fromJsonT);
  final List<T> data;
  final int currentPage;
  final int totalPages;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      _$PaginatedDataModelToJson(this, toJsonT);
}
