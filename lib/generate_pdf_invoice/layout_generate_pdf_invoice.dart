import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screen/generate_pdf_invoice_screen.dart';

class LayoutGeneratePdfInvoice extends StatelessWidget {
  const LayoutGeneratePdfInvoice({super.key});

  static String pathRoute = '/generate-pdf-invoice';
  static GoRoute goRoute() => GoRoute(
        path: pathRoute,
        builder: (context, state) => const GeneratePdfInvoiceScreen(),
      );

  @override
  Widget build(BuildContext context) {
    return const GeneratePdfInvoiceScreen();
  }
}
