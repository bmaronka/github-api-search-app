import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_search_app/data/model/offline_error.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/presentation/routing/router.gr.dart';
import 'package:github_search_app/presentation/widgets/message_body/message_body.dart';
import 'package:github_search_app/presentation/widgets/scaffold/scaffold.dart';

@RoutePage()
class ErrorPage extends StatelessWidget {
  final String? title;
  final Object error;
  final VoidCallback? onConfirm;

  const ErrorPage(
    this.error, {
    this.title,
    this.onConfirm,
    super.key,
  });

  String get _title => error.isOfflineError
      ? title ?? Strings.current.offlineErrorTitle
      : title ?? Strings.current.unspecifiedErrorTitle;

  @override
  Widget build(BuildContext context) => AppScaffold(
        title: _title,
        body: MessageBody.error(
          title: _title,
          onConfirm: onConfirm ?? () => context.router.popUntilRouteWithName(HomeRoute.name),
        ),
      );
}
