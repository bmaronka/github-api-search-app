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
  ({String owner, String repo, int page, List<Issue> issues})? _issuesCache;

  @override
  Future<List<Repository>> getRepositories(
    String query, {
    required int page,
    bool tryCache = true,
  }) async {
    _clearReposCache(query);

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

  void _clearReposCache(String query) {
    if (query != _reposCache?.query) {
      _reposCache = null;
    }
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
    _clearIssuesCache(owner, repo);

    if (_canUseIssuesCache(owner, repo, page: page, tryCache: tryCache)) {
      return _cutResponse<Issue>(_issuesCache!.issues, page);
    }

    final issueDtosList = await _repositoriesDataSource.getRepoIssues(
      owner,
      repo,
      page.toString(),
      _issuesState,
    );
    final issues = issueDtosList.map(Issue.fromIssueDto).toList(growable: false);
    _issuesCache = (
      owner: owner,
      repo: repo,
      page: page,
      issues: [...?_issuesCache?.issues, ...issues],
    );

    return _cutResponse<Issue>(_issuesCache!.issues, page);
  }

  void _clearIssuesCache(String owner, String repo) {
    if (owner != _issuesCache?.owner || repo != _issuesCache?.repo) {
      _issuesCache = null;
    }
  }

  bool _canUseIssuesCache(
    String owner,
    String repo, {
    required int page,
    required bool tryCache,
  }) =>
      tryCache &&
      _issuesCache != null &&
      owner == _issuesCache!.owner &&
      repo == _issuesCache!.repo &&
      page <= _issuesCache!.page;

  List<T> _cutResponse<T>(List<T> response, int page) => response.sublist((page - 1) * _cutFactor, page * _cutFactor);
}
