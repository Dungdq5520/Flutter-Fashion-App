// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get id => throw _privateConstructorUsedError;
  String get namevi => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get regularPrice => throw _privateConstructorUsedError;
  String get salePrice => throw _privateConstructorUsedError;
  String get discount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get idList => throw _privateConstructorUsedError;
  List<String> get gallery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String id,
      String namevi,
      String photo,
      String regularPrice,
      String salePrice,
      String discount,
      String status,
      String idList,
      List<String> gallery});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namevi = null,
    Object? photo = null,
    Object? regularPrice = null,
    Object? salePrice = null,
    Object? discount = null,
    Object? status = null,
    Object? idList = null,
    Object? gallery = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namevi: null == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      regularPrice: null == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      idList: null == idList
          ? _value.idList
          : idList // ignore: cast_nullable_to_non_nullable
              as String,
      gallery: null == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String namevi,
      String photo,
      String regularPrice,
      String salePrice,
      String discount,
      String status,
      String idList,
      List<String> gallery});
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namevi = null,
    Object? photo = null,
    Object? regularPrice = null,
    Object? salePrice = null,
    Object? discount = null,
    Object? status = null,
    Object? idList = null,
    Object? gallery = null,
  }) {
    return _then(_$_ProductModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namevi: null == namevi
          ? _value.namevi
          : namevi // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      regularPrice: null == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      idList: null == idList
          ? _value.idList
          : idList // ignore: cast_nullable_to_non_nullable
              as String,
      gallery: null == gallery
          ? _value._gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {required this.id,
      required this.namevi,
      required this.photo,
      required this.regularPrice,
      required this.salePrice,
      required this.discount,
      required this.status,
      required this.idList,
      required final List<String> gallery})
      : _gallery = gallery;

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  final String id;
  @override
  final String namevi;
  @override
  final String photo;
  @override
  final String regularPrice;
  @override
  final String salePrice;
  @override
  final String discount;
  @override
  final String status;
  @override
  final String idList;
  final List<String> _gallery;
  @override
  List<String> get gallery {
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gallery);
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, namevi: $namevi, photo: $photo, regularPrice: $regularPrice, salePrice: $salePrice, discount: $discount, status: $status, idList: $idList, gallery: $gallery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namevi, namevi) || other.namevi == namevi) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.idList, idList) || other.idList == idList) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      namevi,
      photo,
      regularPrice,
      salePrice,
      discount,
      status,
      idList,
      const DeepCollectionEquality().hash(_gallery));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {required final String id,
      required final String namevi,
      required final String photo,
      required final String regularPrice,
      required final String salePrice,
      required final String discount,
      required final String status,
      required final String idList,
      required final List<String> gallery}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  String get id;
  @override
  String get namevi;
  @override
  String get photo;
  @override
  String get regularPrice;
  @override
  String get salePrice;
  @override
  String get discount;
  @override
  String get status;
  @override
  String get idList;
  @override
  List<String> get gallery;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
