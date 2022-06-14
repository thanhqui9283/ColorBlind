import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HelpEyes extends StatelessWidget {
  final String url;

  const HelpEyes({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: Uri.parse(url)),
          onLoadStart: (_, __) => const Center(
            child: CircularProgressIndicator(),
          ),
          onLoadStop: (_, __) => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
