import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../icons/AppFonts_icons.dart';
import '../../constants.dart'; 
import 'widget/appbar_widget.dart';
import 'widget/product_widget.dart';

class ProductFavoriteScreen extends ConsumerStatefulWidget {
  const ProductFavoriteScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductFavoriteScreenState();
}

class _ProductFavoriteScreenState extends ConsumerState<ProductFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          defaultPadding, 0, defaultPadding, 0),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Sản phẩm ưa thích",
                              style: TextStyle(
                                color: colorBlack,
                                fontFamily: 'UAB',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(AppFonts.sort),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      height: 35,
                      color: Color(0xFFD9D9D9),
                      thickness: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(defaultPadding, 0,
                          defaultPadding, defaultPadding * 2),
                      child: ProductWidget('/product'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
