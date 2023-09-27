import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_search_app/presentation/widgets/loader/loader.dart';

@RoutePage()
class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: const AppLoader(),
      );
}
