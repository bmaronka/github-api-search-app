import 'package:github_search_app/data/repositories/data_source/repositories_data_source.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/domain/repositories/service/repositories_service.dart';
import 'package:injectable/injectable.dart';

const _sort = 'stars';
const _order = 'desc';
const _issuesState = 'all';

@LazySingleton(as: RepositoriesService)
class RepositoriesServiceImpl implements RepositoriesService {
  final RepositoriesDataSource _repositoriesDataSource;

  const RepositoriesServiceImpl(this._repositoriesDataSource);

  @override
  Future<List<Repository>> getRepositories(
    String query, {
    required int page,
  }) async {
    final repositoriesListDto = await _repositoriesDataSource.getRepositories(
      query,
      page.toString(),
      _sort,
      _order,
    );

    return repositoriesListDto.repositories.map(Repository.fromRepositoryDto).toList(growable: false);
  }

  @override
  Future<List<Issue>> getRepoIssues(
    String owner,
    String repo, {
    required int page,
  }) async {
    final issueDtosList = await _repositoriesDataSource.getRepoIssues(
      owner,
      repo,
      page.toString(),
      _issuesState,
    );

    return issueDtosList.map(Issue.fromIssueDto).toList(growable: false);
  }
}
