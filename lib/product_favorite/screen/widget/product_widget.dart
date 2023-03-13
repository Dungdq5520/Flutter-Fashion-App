import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/product_favorite_provider.dart';

import 'gird_product_widget.dart';

class ProductWidget extends ConsumerStatefulWidget {
  final String url;
  const ProductWidget(this.url, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends ConsumerState<ProductWidget> {
  @override
  void initState() {
    super.initState();
    ref.read(productFavoriteProviders.notifier).init(widget.url);
  }

  @override
  Widget build(context) {
    final products = ref.watch(productFavoriteProviders);
    return (products.listProducts != null && products.listProducts!.isNotEmpty)
        ? GridProductWidget(products: products.listProducts!)
        : Container(
            padding: const EdgeInsets.all(20),
            child: const Text('Chưa có sản phẩn yêu thích!'),
          );
  }
}
