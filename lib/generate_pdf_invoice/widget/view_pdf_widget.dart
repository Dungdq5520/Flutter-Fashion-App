import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pdfWid;

import '../model/invoice.dart';

class ViewPdfWidget extends StatefulWidget {
  final Invoice invoice;

  const ViewPdfWidget({
    Key? key,
    required this.invoice,
  }) : super(key: key);

  @override
  State<ViewPdfWidget> createState() => _ViewPdfWidgetState();
}

class _ViewPdfWidgetState extends State<ViewPdfWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => _createPdf(
          format,
        ),
      ),
    );
  }

  Future<Uint8List> _createPdf(
    PdfPageFormat format,
  ) async {
    final pdf = pdfWid.Document(
      version: PdfVersion.pdf_1_4,
      compress: true,
    );
    pdf.addPage(
      pdfWid.Page(
        pageFormat: format,
        build: (context) {
          return pdfWid.SizedBox(
            width: double.infinity,
            child: pdfWid.FittedBox(
                child: pdfWid.Column(
                    mainAxisAlignment: pdfWid.MainAxisAlignment.start,
                    children: [
                  pdfWid.Text("Follow",
                      style: pdfWid.TextStyle(
                          fontSize: 35, fontWeight: pdfWid.FontWeight.bold)),
                  pdfWid.Container(
                    width: 250,
                    height: 1.5,
                    margin: const pdfWid.EdgeInsets.symmetric(vertical: 5),
                    color: PdfColors.black,
                  ),
                  pdfWid.Container(
                    width: 300,
                    child: pdfWid.Text("#30FlutterTips",
                        style: pdfWid.TextStyle(
                          fontSize: 35,
                          fontWeight: pdfWid.FontWeight.bold,
                        ),
                        textAlign: pdfWid.TextAlign.center,
                        maxLines: 5),
                  ),
                  pdfWid.Container(
                    width: 250,
                    height: 1.5,
                    margin: const pdfWid.EdgeInsets.symmetric(vertical: 10),
                    color: PdfColors.black,
                  ),
                  pdfWid.Text("Lakshydeep Vikram",
                      style: pdfWid.TextStyle(
                          fontSize: 25, fontWeight: pdfWid.FontWeight.bold)),
                  pdfWid.Text("Follow on Medium, LinkedIn, GitHub",
                      style: pdfWid.TextStyle(
                          fontSize: 25, fontWeight: pdfWid.FontWeight.bold)),
                ])),
          );
        },
      ),
    );
    return pdf.save();
  }
}
