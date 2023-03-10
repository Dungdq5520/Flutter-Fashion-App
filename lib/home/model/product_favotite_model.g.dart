// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_favotite_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductFavoriteModelAdapter extends TypeAdapter<ProductFavoriteModel> {
  @override
  final int typeId = 1;

  @override
  ProductFavoriteModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductFavoriteModel(
      id: fields[0] as String,
      namevi: fields[1] as String,
      photo: fields[2] as String,
      salePrice: fields[3] as String,
      regularPrice: fields[4] as String,
      idList: fields[5] as String,
      isFav: fields[6] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ProductFavoriteModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.namevi)
      ..writeByte(2)
      ..write(obj.photo)
      ..writeByte(3)
      ..write(obj.salePrice)
      ..writeByte(4)
      ..write(obj.regularPrice)
      ..writeByte(5)
      ..write(obj.idList)
      ..writeByte(6)
      ..write(obj.isFav);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductFavoriteModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
