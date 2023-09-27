import 'package:flutter/material.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/style/dimens.dart';

class StatusBadge extends StatelessWidget with ExtensionMixin {
  const StatusBadge({
    required this.status,
    super.key,
  });

  final IssueStatus status;

  @override
  Widget build(BuildContext context) => Chip(
        label: Text(status.label),
        labelStyle: TextStyle(
          fontSize: Dimens.s,
          color: context.getColors().white,
        ),
        visualDensity: const VisualDensity(vertical: VisualDensity.minimumDensity),
        backgroundColor: status.getColor(context),
      );
}
