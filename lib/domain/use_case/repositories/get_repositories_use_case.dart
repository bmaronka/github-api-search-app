import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/domain/repositories/service/repositories_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRepositoriesUseCase {
  final RepositoriesService _repositoriesService;

  const GetRepositoriesUseCase(this._repositoriesService);

  Future<List<Repository>> call(
    String query, {
    required int page,
  }) =>
      _repositoriesService.getRepositories(query, page: page);
}
