import 'package:flutter/material.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';

class AppScaffold extends StatelessWidget with ExtensionMixin {
  const AppScaffold({
    required this.body,
    this.title = '',
    this.actions,
    super.key,
  });

  final String title;
  final List<Widget>? actions;
  final Widget body;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.getColors().white,
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: context.getColors().primary,
          actions: actions,
        ),
        body: body,
      );
}
