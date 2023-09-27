import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/repositories/model/owner_dto.dart';
import 'package:github_search_app/data/repositories/model/repository_dto.dart';
import 'package:github_search_app/domain/repositories/model/owner.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';

void main() {
  test(
    'test mapping from RepositoryDto to Repository',
    () {
      const repositoryDto = RepositoryDto(
        1,
        'Repository 1',
        'Description 1',
        OwnerDto(1, 'Owner 1', 'www.avatar1.com'),
        1,
      );
      final repository = Repository(
        id: 1,
        name: 'Repository 1',
        description: 'Description 1',
        owner: Owner(id: 1, name: 'Owner 1', avatarUrl: 'www.avatar1.com'),
        stars: 1,
      );

      expect(Repository.fromRepositoryDto(repositoryDto), repository);
    },
  );
}
