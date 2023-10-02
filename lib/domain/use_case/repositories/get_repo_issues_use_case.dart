import 'package:github_search_app/domain/issues/service/issues_service.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRepoIssuesUseCase {
  final IssuesService _issuesService;

  const GetRepoIssuesUseCase(this._issuesService);

  Future<List<Issue>> call(
    String owner,
    String repo, {
    required int page,
    bool tryCache = true,
  }) =>
      _issuesService.getIssues(owner, repo, page: page, tryCache: tryCache);
}
