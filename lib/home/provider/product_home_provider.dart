import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import '../model/product_model.dart';
import '../repository/repository.dart';

enum ProductStatus { loading, liked, dislike }

class ProductState {
  final List<ProductModel>? listProducts;
  bool? isLoading;
  ProductState({this.listProducts, this.isLoading = true});

  ProductState copyWith({List<ProductModel>? listProducts, bool? isLoading}) {
    return ProductState(
        isLoading: isLoading ?? this.isLoading,
        listProducts: listProducts ?? this.listProducts);
  }
}

class ProductControler extends StateNotifier<ProductState> {
  ProductControler() : super(ProductState());
  final Box boxFav = Hive.box('FavoritesBox');

  init(String url) async {
    final List<ProductModel>? items = await fetchProducts(url);
    state = state.copyWith(listProducts: items, isLoading: false);
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
    state = state.copyWith(isLoading: true);
    if (!curFav) {
      List<ProductModel> newList = [];
      for (var element in state.listProducts!) {
        if (int.parse(element.id.toString()) == id) {
          element = element.copyWith(isFav: true);
        }
        newList.add(element);
      }
      print(boxFav.values);
      state = state.copyWith(listProducts: newList, isLoading: false);
    } else {
      List<ProductModel> newList = [];
      for (var element in state.listProducts!) {
        if (int.parse(element.id.toString()) == id) {
          element = element.copyWith(isFav: false);
        }
        newList.add(element);
      }
      state = state.copyWith(listProducts: newList, isLoading: false);
    }
  }
}

final productHomeProviders =
    StateNotifierProvider<ProductControler, ProductState>(
        (ref) => ProductControler());
