// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as String,
      namevi: json['namevi'] as String,
      photo: json['photo'] as String,
      regularPrice: json['regularPrice'] as String,
      salePrice: json['salePrice'] as String,
      discount: json['discount'] as String,
      status: json['status'] as String,
      idList: json['idList'] as String,
      gallery:
          (json['gallery'] as List<dynamic>).map((e) => e as String).toList(),
      isFav: json['isFav'] ?? false,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'namevi': instance.namevi,
      'photo': instance.photo,
      'regularPrice': instance.regularPrice,
      'salePrice': instance.salePrice,
      'discount': instance.discount,
      'status': instance.status,
      'idList': instance.idList,
      'gallery': instance.gallery,
      'isFav': instance.isFav,
    };
