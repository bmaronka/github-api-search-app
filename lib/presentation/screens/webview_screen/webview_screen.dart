import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/presentation/widgets/loader/loader.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class WebViewScreen extends StatefulWidget {
  const WebViewScreen({
    required this.url,
    super.key,
  });

  final String url;

  @override
  State<WebViewScreen> createState() => _WebViewScreen();
}

class _WebViewScreen extends State<WebViewScreen> {
  late WebViewController _controller;
  bool _loading = true;

  @override
  void initState() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (_) => setState(() => _loading = false),
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(Strings.of(context).webviewScreenTitle),
          centerTitle: true,
        ),
        body: _loading ? const AppLoader() : WebViewWidget(controller: _controller),
      );
}
