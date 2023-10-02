import 'package:github_search_app/data/issues/data_source/issues_data_source.dart';
import 'package:github_search_app/domain/issues/service/issues_service.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:github_search_app/extensions/extension_mixin.dart';
import 'package:github_search_app/extensions/list_extension.dart';
import 'package:injectable/injectable.dart';

const _issuesState = 'all';

@LazySingleton(as: IssuesService)
class IssuesServiceImpl with ExtensionMixin implements IssuesService {
  final IssuesDataSource _issuesDataSource;

  IssuesServiceImpl(this._issuesDataSource);

  ({String owner, String repo, int page, List<Issue> issues})? _issuesCache;

  @override
  Future<List<Issue>> getIssues(
    String owner,
    String repo, {
    required int page,
    bool tryCache = true,
  }) async {
    _clearIssuesCache(owner, repo);

    if (_canUseIssuesCache(owner, repo, page: page, tryCache: tryCache)) {
      return _issuesCache!.issues.cutResponse(page);
    }

    final issueDtosList = await _issuesDataSource.getIssues(
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

    return _issuesCache!.issues.cutResponse(page);
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
}
