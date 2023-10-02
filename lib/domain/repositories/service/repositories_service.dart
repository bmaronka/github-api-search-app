import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';

abstract class RepositoriesService {
  Future<List<Repository>> getRepositories(
    String query, {
    required int page,
    bool tryCache = true,
  });

  Future<List<Issue>> getRepoIssues(
    String owner,
    String repo, {
    required int page,
    bool tryCache = true,
  });
}
