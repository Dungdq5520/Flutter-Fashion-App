import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screen/product_favorite_screen.dart';


class LayoutProductFavorite extends StatelessWidget {
  const LayoutProductFavorite({super.key});
 

  static String pathRoute = '/product-favorite';
  static GoRoute goRoute() => GoRoute(
        path: pathRoute,
        builder: (context, state) => const ProductFavoriteScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return const ProductFavoriteScreen();
  }
}
