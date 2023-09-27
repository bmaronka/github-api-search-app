import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/presentation/routing/router.gr.dart';
import 'package:github_search_app/presentation/widgets/avatar/avatar.dart';
import 'package:github_search_app/presentation/widgets/stars_badge/starts_badge.dart';

class RepositoryTile extends StatelessWidget {
  const RepositoryTile({
    required this.repository,
    super.key,
  });

  final Repository repository;

  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          leading: _buildLeading(),
          title: _buildTitle(),
          subtitle: _buildSubtitle(),
          trailing: StarsBadge(starsCount: repository.stars),
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
          ),
          onTap: () => _navigateToRepositoryDetails(context),
        ),
      );

  Widget _buildLeading() => AppAvatar(
        url: repository.owner.avatarUrl,
        placeholder: repository.owner.name[0].toUpperCase(),
      );

  Widget _buildTitle() => Text(repository.name);

  Widget? _buildSubtitle() => repository.description?.isNotEmpty ?? false
      ? Text(
          repository.description!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      : null;

  void _navigateToRepositoryDetails(BuildContext context) =>
      context.router.push(RepositoryDetailsRoute(repository: repository));
}
