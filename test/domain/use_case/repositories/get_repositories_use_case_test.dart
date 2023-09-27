import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/domain/repositories/model/owner.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/domain/repositories/service/repositories_service.dart';
import 'package:github_search_app/domain/use_case/repositories/get_repositories_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_repo_issues_use_case_test.mocks.dart';

@GenerateMocks([
  RepositoriesService,
])
void main() {
  late RepositoriesService service;
  late GetRepositoriesUseCase getRepositoriesUseCase;

  setUp(() {
    service = MockRepositoriesService();
    getRepositoriesUseCase = GetRepositoriesUseCase(service);
  });

  test(
    'get repositories',
    () async {
      const testQuery = 'test';
      const testPage = 1;
      final repositories = [
        Repository(
          id: 1,
          name: 'Repository 1',
          description: 'Description 1',
          owner: Owner(id: 1, name: 'Owner 1', avatarUrl: 'www.avatar1.com'),
          stars: 1,
        ),
        Repository(
          id: 2,
          name: 'Repository 2',
          description: 'Description 2',
          owner: Owner(id: 2, name: 'Owner 2', avatarUrl: 'www.avatar2.com'),
          stars: 2,
        ),
      ];

      when(service.getRepositories(testQuery, page: testPage)).thenAnswer((_) => Future.value(repositories));

      expect(await getRepositoriesUseCase(testQuery, page: testPage), repositories);
    },
  );
}
