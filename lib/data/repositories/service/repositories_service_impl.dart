import 'package:github_search_app/data/repositories/data_source/repositories_data_source.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/domain/repositories/service/repositories_service.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/extensions/list_extension.dart';
import 'package:injectable/injectable.dart';

const _sort = 'stars';
const _order = 'desc';

@LazySingleton(as: RepositoriesService)
class RepositoriesServiceImpl with ExtensionMixin implements RepositoriesService {
  final RepositoriesDataSource _repositoriesDataSource;

  RepositoriesServiceImpl(this._repositoriesDataSource);

  ({String query, int page, List<Repository> repositories})? _reposCache;

  @override
  Future<List<Repository>> getRepositories(
    String query, {
    required int page,
    bool tryCache = true,
  }) async {
    _clearReposCache(query);

    if (_canUseReposCache(query, page: page, tryCache: tryCache)) {
      return _reposCache!.repositories.cutResponse(page);
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

    return _reposCache!.repositories.cutResponse(page);
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
}
