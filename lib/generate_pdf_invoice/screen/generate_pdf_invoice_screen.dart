import 'package:flutter/material.dart';
import '../api/pdf_api.dart';
import '../api/pdf_invoice_api.dart';
import '../model/customer.dart';
import '../model/invoice.dart';
import '../model/supplier.dart';
import '../widget/button_widget.dart';
import '../widget/title_widget.dart';

class GeneratePdfInvoiceScreen extends StatefulWidget {
  const GeneratePdfInvoiceScreen({super.key});

  @override
  _GeneratePdfInvoiceScreenState createState() =>
      _GeneratePdfInvoiceScreenState();
}

class _GeneratePdfInvoiceScreenState extends State<GeneratePdfInvoiceScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const TitleWidget(
                  icon: Icons.picture_as_pdf,
                  text: 'In hóa đơn',
                ),
                const SizedBox(height: 48),
                ButtonWidget(
                  text: 'In ngay',
                  onClicked: () async {
                    final date = DateTime.now();
                    final dueDate = date.add(const Duration(days: 7));

                    final invoice = Invoice(
                      supplier: const Supplier(
                        name: 'Sarah Field',
                        address: 'Sarah Street 9, Beijing, China',
                        paymentInfo: 'https://paypal.me/sarahfieldzz',
                      ),
                      customer: const Customer(
                        name: 'Apple Inc.',
                        address: 'Apple Street, Cupertino, CA 95014',
                      ),
                      info: InvoiceInfo(
                        date: date,
                        dueDate: dueDate,
                        description: 'My description...',
                        number: '${DateTime.now().year}-9999',
                      ),
                      items: [
                        InvoiceItem(
                          description: 'Coffee',
                          date: DateTime.now(),
                          quantity: 3,
                          vat: 0.19,
                          unitPrice: 5.99,
                        ),
                        InvoiceItem(
                          description: 'Water',
                          date: DateTime.now(),
                          quantity: 8,
                          vat: 0.19,
                          unitPrice: 0.99,
                        ),
                        InvoiceItem(
                          description: 'Orange',
                          date: DateTime.now(),
                          quantity: 3,
                          vat: 0.19,
                          unitPrice: 2.99,
                        ),
                        InvoiceItem(
                          description: 'Apple',
                          date: DateTime.now(),
                          quantity: 8,
                          vat: 0.19,
                          unitPrice: 3.99,
                        ),
                        InvoiceItem(
                          description: 'Mango',
                          date: DateTime.now(),
                          quantity: 1,
                          vat: 0.19,
                          unitPrice: 1.59,
                        ),
                      ],
                    );
                    final pdfFile = await PdfInvoiceApi.generate(invoice);
                    PdfApi.openFile(pdfFile);

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => ViewPdfWidget(invoice: invoice),
                    //   ),
                    // );
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
