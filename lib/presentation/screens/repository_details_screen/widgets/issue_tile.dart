import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/presentation/routing/router.gr.dart';
import 'package:github_search_app/presentation/screens/repository_details_screen/widgets/status_badge.dart';
import 'package:github_search_app/presentation/widgets/avatar/avatar.dart';
import 'package:github_search_app/style/dimens.dart';

class IssueTile extends StatelessWidget {
  const IssueTile({
    required this.issue,
    super.key,
  });

  final Issue issue;

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: EdgeInsets.all(Dimens.s),
          child: Column(
            children: [
              _buildTopPanel(context),
              SizedBox(height: Dimens.s),
              _buildTitle(),
              _buildSeeMoreButton(context),
            ],
          ),
        ),
      );

  Widget _buildTopPanel(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (issue.assignee != null) ...[
                AppAvatar(
                  url: issue.assignee!.avatarUrl,
                  placeholder: issue.assignee!.name[0].toUpperCase(),
                  size: Dimens.l,
                ),
                SizedBox(width: Dimens.xs),
              ],
              StatusBadge(status: issue.status),
            ],
          ),
          Text(Strings.of(context).issueNumber(issue.number)),
        ],
      );

  Widget _buildTitle() => Expanded(
        child: Text(
          issue.title,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 4,
        ),
      );

  Widget _buildSeeMoreButton(BuildContext context) => TextButton(
        onPressed: () => context.router.push(WebViewRoute(url: issue.url)),
        child: Text(Strings.of(context).seeMore),
      );
}
