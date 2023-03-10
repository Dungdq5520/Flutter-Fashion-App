// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
// import '../../product_detail/model/rating_model.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String namevi,
    required String photo,
    required String regularPrice,
    required String salePrice,
    required String discount,
    required String status,
    required String idList,
    required List<String> gallery,
    // @Default([]) List<RatingModel> rating,
    @Default(false) isFav,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, Object?> json) =>
      _$ProductModelFromJson(json);
}
