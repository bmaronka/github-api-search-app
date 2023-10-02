import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:github_search_app/domain/repositories/service/repositories_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRepoIssuesUseCase {
  final RepositoriesService _repositoriesService;

  const GetRepoIssuesUseCase(this._repositoriesService);

  Future<List<Issue>> call(
    String owner,
    String repo, {
    required int page,
    bool tryCache = true,
  }) =>
      _repositoriesService.getRepoIssues(owner, repo, page: page, tryCache: tryCache);
}
