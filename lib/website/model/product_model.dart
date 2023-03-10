// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';


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
    // @Default([]) List<RatingModel> rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, Object?> json) =>
      _$ProductModelFromJson(json);
}
