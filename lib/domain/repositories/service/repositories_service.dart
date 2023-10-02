import 'package:github_search_app/domain/repositories/model/repository.dart';

abstract class RepositoriesService {
  Future<List<Repository>> getRepositories(
    String query, {
    required int page,
    bool tryCache = true,
  });
}
