import 'package:flutter/material.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/presentation/widgets/github_search_app_bar/github_search_app_bar.dart';

class AppScaffold extends StatelessWidget {
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
        appBar: GithubSearchAppBar(
          title: title,
          actions: actions,
        ),
        body: body,
      );
}
