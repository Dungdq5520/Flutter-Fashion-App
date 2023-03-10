import 'package:hive/hive.dart';

part 'product_favotite_model.g.dart';

@HiveType(typeId: 1)
class ProductFavoriteModel extends HiveObject {
  @HiveField(0)
  late String id;
  @HiveField(1)
  late String namevi;
  @HiveField(2)
  late String photo;
  @HiveField(3)
  late String salePrice;
  @HiveField(4)
  late String regularPrice;
  @HiveField(5)
  late String idList;
  @HiveField(6)
  late bool isFav;

  ProductFavoriteModel({
    this.id = "",
    this.namevi = "",
    this.photo = "",
    this.salePrice = "",
    this.regularPrice = "",
    this.idList = "",
    this.isFav = false,
  });
}
