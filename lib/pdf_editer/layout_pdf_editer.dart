import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screen/website_screen.dart';

class LayoutPdfEditer extends StatelessWidget {
  const LayoutPdfEditer({super.key});

  static String pathRoute = '/pdf-editer';
  static GoRoute goRoute() => GoRoute(
        path: pathRoute,
        builder: (context, state) => const PdfEditerScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return const PdfEditerScreen();
  }
}
