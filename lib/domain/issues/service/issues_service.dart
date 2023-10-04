import 'package:github_search_app/domain/issues/model/issue.dart';

abstract class IssuesService {
  Future<List<Issue>> getIssues(
    String owner,
    String repo, {
    required int page,
    bool tryCache = true,
  });
}
