import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'widget/appbar_widget.dart';
import 'widget/webview_widget.dart';

class WebsiteScreen extends ConsumerStatefulWidget {
  const WebsiteScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WebsiteScreenState();
}

class _WebsiteScreenState extends ConsumerState<WebsiteScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      backgroundColor: Colors.white,
      body: WebviewWidget(
        url: 'https://nina.vn/',
      ),
    );
  }
}
