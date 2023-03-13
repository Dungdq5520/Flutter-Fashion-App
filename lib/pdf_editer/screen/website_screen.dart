// ignore_for_file: library_prefixes

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdfWid;
import 'package:printing/printing.dart';

class PdfEditerScreen extends ConsumerStatefulWidget {
  const PdfEditerScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PdfEditerScreenState();
}

class _PdfEditerScreenState extends ConsumerState<PdfEditerScreen> {
  final pdf = pdfWid.Document(version: PdfVersion.pdf_1_4, compress: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      version: PdfVersion.pdf_1_5,
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
                  pdfWid.Container(
                    width: 300,
                    child: pdfWid.Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
    return pdf.save();
  }
}
