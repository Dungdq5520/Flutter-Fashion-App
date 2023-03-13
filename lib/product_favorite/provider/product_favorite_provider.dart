import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import '../../home/model/product_favotite_model.dart';
import '../../home/model/product_model.dart';
import '../../home/repository/repository.dart';

enum ProductStatus { loading, liked, dislike }

class ProductFavoriteState {
  final List<ProductModel>? listProducts;
  bool? isLoading;
  ProductFavoriteState({this.listProducts, this.isLoading = true});

  ProductFavoriteState copyWith(
      {List<ProductModel>? listProducts, bool? isLoading}) {
    return ProductFavoriteState(
        isLoading: isLoading ?? this.isLoading,
        listProducts: listProducts ?? this.listProducts);
  }
}

class ProductFavoriteControler extends StateNotifier<ProductFavoriteState> {
  ProductFavoriteControler() : super(ProductFavoriteState());

  init(String url) async {
    final List<ProductModel>? items = await fetchProducts(url);
    final boxFav = Hive.box<ProductFavoriteModel>('FavoritesBox');

    List<ProductModel> newList = [];
    for (var element in items!) {
      if (boxFav.get(int.parse(element.id.toString())) != null) {
        element = element.copyWith(isFav: true);
        newList.add(element);
      }
    }

    state = state.copyWith(listProducts: newList, isLoading: false);
  }

  Future<List<ProductModel>?> fetchProducts(String url) async {
    final response = await apiProvider.get(url);
    final data = json.decode(response.data) as List<dynamic>;
    List<ProductModel>? newList = [];
    for (var product in data) {
      newList.add(ProductModel.fromJson(product));
    }
    return newList;
  }

  void toggleFavorite(int id, bool curFav) async {
    final boxFav = Hive.box<ProductFavoriteModel>('FavoritesBox');
    state = state.copyWith(isLoading: true);
    if (!curFav) {
      List<ProductModel> newList = [];
      for (var element in state.listProducts!) {
        if (int.parse(element.id.toString()) == id) {
          element = element.copyWith(isFav: true);
          if (boxFav.get(id) == null) {
            boxFav.put(
              id,
              ProductFavoriteModel(
                id: element.id,
                namevi: element.namevi,
                photo: element.photo,
                regularPrice: element.regularPrice,
                salePrice: element.salePrice,
                idList: element.idList,
                isFav: element.isFav,
              ),
            );
          }
        }
        newList.add(element);
      }
      state = state.copyWith(listProducts: newList, isLoading: false);
    } else {
      List<ProductModel> newList = [];
      for (var element in state.listProducts!) {
        if (int.parse(element.id.toString()) == id) {
          element = element.copyWith(isFav: false);
          if (boxFav.get(id) != null) {
            boxFav.delete(id);
          }
        } else {
          newList.add(element);
        }
      }
      state = state.copyWith(listProducts: newList, isLoading: false);
    }
  }
}

final productFavoriteProviders =
    StateNotifierProvider<ProductFavoriteControler, ProductFavoriteState>(
        (ref) => ProductFavoriteControler());
