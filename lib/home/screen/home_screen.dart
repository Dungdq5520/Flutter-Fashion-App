import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:thoitrang/website/layout_website.dart';
import '../../account/layout_account.dart';
import '../../cart/layout_cart.dart';
import '../../generate_pdf_invoice/layout_generate_pdf_invoice.dart';
import '../../login/layout_login.dart';
import '../../product_favorite/layout_product_favorite.dart';
import 'widget/home_widget.dart';
import '../../constants.dart';
import '../../icons/AppFonts_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeWidget(),
    const LayoutProductFavorite(),
    const LayoutCart(),
    const LayoutWebsite(),
    const LayoutLogin(),
    const LayoutGeneratePdfInvoice(),
    const LayoutAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomNavigationBar(
        selectedColor: colorMain,
        strokeColor: colorMain,
        unSelectedColor: const Color(0xffacacac),
        backgroundColor: Colors.white,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(AppFonts.home),
          ),
          CustomNavigationBarItem(
            icon: const Icon(AppFonts.heart),
          ),
          CustomNavigationBarItem(
            icon: const Icon(AppFonts.bag),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.travel_explore_sharp),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.language_outlined),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.picture_as_pdf_outlined),
          ),
          CustomNavigationBarItem(
            icon: const Icon(AppFonts.user),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
    );
  }
}
