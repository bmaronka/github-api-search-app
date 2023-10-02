import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/model/shared/owner_dto.dart';
import 'package:github_search_app/data/repositories/data_source/repositories_data_source.dart';
import 'package:github_search_app/data/repositories/model/repositories_list_dto.dart';
import 'package:github_search_app/data/repositories/model/repository_dto.dart';
import 'package:github_search_app/data/repositories/service/repositories_service_impl.dart';
import 'package:github_search_app/domain/model/shared/owner.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'repositories_service_impl_test.mocks.dart';

@GenerateMocks([
  RepositoriesDataSource,
])
void main() {
  late RepositoriesServiceImpl service;
  late RepositoriesDataSource dataSource;

  setUp(() {
    dataSource = MockRepositoriesDataSource();

    service = RepositoriesServiceImpl(dataSource);
  });

  test(
    'get list of repositories',
    () async {
      const sort = 'stars';
      const order = 'desc';
      const testQuery = 'test';
      const testPage = 1;

      final repositoryDtos = [
        const RepositoryDto(
          1,
          'Repository 1',
          'Description 1',
          OwnerDto(1, 'Owner 1', 'www.avatar1.com'),
          1,
        ),
        const RepositoryDto(
          2,
          'Repository 2',
          'Description 2',
          OwnerDto(2, 'Owner 2', 'www.avatar2.com'),
          2,
        ),
      ];
      final repositoriesListDto = RepositoriesListDto(repositoryDtos);

      final expectedRepositoriesList = [
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

      when(dataSource.getRepositories(testQuery, testPage.toString(), sort, order))
          .thenAnswer((_) => Future.value(repositoriesListDto));

      final repositories = await service.getRepositories(testQuery, page: testPage);

      expect(repositories, expectedRepositoriesList);
    },
  );
}
