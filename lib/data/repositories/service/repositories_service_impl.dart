import 'package:github_search_app/data/repositories/data_source/repositories_data_source.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/domain/repositories/service/repositories_service.dart';
import 'package:injectable/injectable.dart';

const _sort = 'stars';
const _order = 'desc';
const _issuesState = 'all';
const _cutFactor = 30;

@LazySingleton(as: RepositoriesService)
class RepositoriesServiceImpl implements RepositoriesService {
  final RepositoriesDataSource _repositoriesDataSource;

  RepositoriesServiceImpl(this._repositoriesDataSource);

  ({String query, int page, List<Repository> repositories})? _reposCache;

  @override
  Future<List<Repository>> getRepositories(
    String query, {
    required int page,
    bool tryCache = true,
  }) async {
    if (_canUseReposCache(query, page: page, tryCache: tryCache)) {
      return _cutResponse<Repository>(_reposCache!.repositories, page);
    }

    final repositoriesListDto = await _repositoriesDataSource.getRepositories(
      query,
      page.toString(),
      _sort,
      _order,
    );
    final repositories = repositoriesListDto.repositories.map(Repository.fromRepositoryDto).toList(growable: false);
    _reposCache = (
      query: query,
      page: page,
      repositories: [...?_reposCache?.repositories, ...repositories],
    );

    return _cutResponse<Repository>(_reposCache!.repositories, page);
  }

  bool _canUseReposCache(
    String query, {
    required int page,
    required bool tryCache,
  }) =>
      tryCache && _reposCache != null && query == _reposCache!.query && page <= _reposCache!.page;

  @override
  Future<List<Issue>> getRepoIssues(
    String owner,
    String repo, {
    required int page,
    bool tryCache = true,
  }) async {
    final issueDtosList = await _repositoriesDataSource.getRepoIssues(
      owner,
      repo,
      page.toString(),
      _issuesState,
    );

    return issueDtosList.map(Issue.fromIssueDto).toList(growable: false);
  }

  List<T> _cutResponse<T>(List<T> response, int page) => response.sublist((page - 1) * _cutFactor, page * _cutFactor);
}
