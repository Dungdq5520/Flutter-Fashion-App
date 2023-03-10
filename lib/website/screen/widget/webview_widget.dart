import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewWidget extends StatefulWidget {
  final String url;
  const WebviewWidget({super.key, required this.url});

  @override
  State<WebviewWidget> createState() => _WebviewWidgetState();
}

class _WebviewWidgetState extends State<WebviewWidget> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();

    // #docregion webview_controller
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    // #enddocregion webview_controller
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
