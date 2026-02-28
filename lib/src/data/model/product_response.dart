import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
abstract class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'rating') Rating? rating,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, Object?> json) =>
      _$ProductResponseFromJson(json);

  static List<ProductResponse> fromJsonList(List<dynamic> json) =>
      json.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>)).toList();
}

@freezed
abstract class Rating with _$Rating {
  const factory Rating({
    @JsonKey(name: 'rate') double? rate,
    @JsonKey(name: 'count') int? count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, Object?> json) => _$RatingFromJson(json);
}
