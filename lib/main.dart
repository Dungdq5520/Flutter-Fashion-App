import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/dropdown_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'account/layout_account.dart';
import 'generate_pdf_invoice/layout_generate_pdf_invoice.dart';
import 'pdf_editer/layout_pdf_editer.dart';
import 'register/layout_register.dart';
import 'redeemcode/layout_redeemcode.dart';
import 'website/layout_website.dart';
import 'cart/model/cart_model.dart';
import 'forgotpassword/layout_forgotpassword.dart';
import 'home/model/product_favotite_model.dart';
import 'loading/layout_loading.dart';
import 'cart/layout_cart.dart';
import 'cart/layout_cart_detail.dart';
import 'cart/layout_cart_success.dart';
import 'constants.dart';
import 'home/layout_home.dart';
import 'login/layout_login.dart';
import 'order/layout_order.dart';
import 'product_all/layout_product_all.dart';
import 'product_detail/layout_product_detail.dart';
import 'product_favorite/layout_product_favorite.dart';
import 'product_filter/layout_product_filter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(CartModelAdapter());
  await Hive.openBox<CartModel>('CartBox');

  Hive.registerAdapter(ProductFavoriteModelAdapter());
  await Hive.openBox<ProductFavoriteModel>('FavoritesBox');

  runApp(const ProviderScope(child: MyApp()));
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    LayoutLoading.goRoute(),
    LayoutHome.goRoute(),
    LayoutProductAll.goRoute(),
    LayoutProductFilter.goRoute(),
    LayoutProductDeatil.goRoute(),
    LayoutOrder.goRoute(),
    LayoutCart.goRoute(),
    LayoutCartDetail.goRoute(),
    LayoutCartSuccess.goRoute(),
    LayoutProductFavorite.goRoute(),
    LayoutWebsite.goRoute(),
    LayoutAccount.goRoute(),
    LayoutLogin.goRoute(),
    LayoutRegister.goRoute(),
    LayoutRedeemCode.goRoute(),
    LayoutForgotPassword.goRoute(),
    LayoutPdfEditer.goRoute(),
    LayoutGeneratePdfInvoice.goRoute(),
  ],
);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Thời trang',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'UA',
        primaryColor: colorMain,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: colorBlack),
        ),
      ),
      routerConfig: _router,
      builder: (context, child) => Stack(
        children: [child!, const DropdownAlert()],
      ),
    );
  }
}
