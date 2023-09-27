import 'package:flutter/material.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/generated/l10n.dart';
import 'package:github_search_app/presentation/screens/repository_details_screen/cubit/repository_details_cubit.dart';
import 'package:github_search_app/presentation/screens/repository_details_screen/widgets/issue_tile.dart';
import 'package:github_search_app/presentation/widgets/avatar/avatar.dart';
import 'package:github_search_app/presentation/widgets/loader/loader.dart';
import 'package:github_search_app/presentation/widgets/stars_badge/starts_badge.dart';
import 'package:github_search_app/style/dimens.dart';

class RepositoryDetailsBody extends StatelessWidget {
  const RepositoryDetailsBody({
    required this.cubit,
    required this.repository,
    required this.issues,
    required this.loadingMore,
    super.key,
  });

  final RepositoryDetailsCubit cubit;
  final Repository repository;
  final List<Issue> issues;
  final bool loadingMore;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(Strings.of(context).repositoryDetailsScreenTitle),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(Dimens.m),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRepositoryInfo(context),
              SizedBox(height: Dimens.m),
              _buildDescription(context),
              SizedBox(height: Dimens.m),
              Text(
                Strings.of(context).issues,
                style: TextStyle(fontSize: Dimens.ms),
              ),
              SizedBox(height: Dimens.s),
              _buildIssuesList(),
              _buildLoader(),
            ],
          ),
        ),
      );

  Widget _buildRepositoryInfo(BuildContext context) => Card(
        child: Padding(
          padding: EdgeInsets.all(Dimens.m),
          child: Row(
            children: [
              AppAvatar(
                url: repository.owner.avatarUrl,
                placeholder: repository.owner.name[0].toUpperCase(),
                size: Dimens.c,
              ),
              SizedBox(width: Dimens.s),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      Strings.of(context).repositoryName(repository.name),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      Strings.of(context).repositoryAuthor(repository.owner.name),
                      textAlign: TextAlign.center,
                    ),
                    StarsBadge(starsCount: repository.stars),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildDescription(BuildContext context) => repository.description?.isNotEmpty ?? false
      ? Text(
          Strings.of(context).repositoryDescription(repository.description!),
          textAlign: TextAlign.justify,
        )
      : const SizedBox.shrink();

  Widget _buildIssuesList() => Expanded(
        child: GridView.builder(
          controller: cubit.scrollController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: Dimens.s,
            mainAxisSpacing: Dimens.s,
          ),
          shrinkWrap: true,
          itemCount: issues.length,
          itemBuilder: (context, index) => IssueTile(issue: issues[index]),
        ),
      );

  Widget _buildLoader() => Visibility(
        visible: loadingMore,
        child: Padding(
          padding: EdgeInsets.only(top: Dimens.m),
          child: const AppLoader(),
        ),
      );
}
