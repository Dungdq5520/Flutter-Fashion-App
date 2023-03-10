import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screen/website_screen.dart';

class LayoutWebsite extends StatelessWidget {
  const LayoutWebsite({super.key});

  static String pathRoute = '/website';
  static GoRoute goRoute() => GoRoute(
        path: pathRoute,
        builder: (context, state) => const WebsiteScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return const WebsiteScreen();
  }
}
