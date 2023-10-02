import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/data/repositories/model/repository_dto.dart';
import 'package:github_search_app/domain/model/shared/owner.dart';

part 'repository.freezed.dart';

@freezed
class Repository with _$Repository {
  factory Repository({
    required int id,
    required String name,
    required String? description,
    required Owner owner,
    required int stars,
  }) = _Repository;

  factory Repository.fromRepositoryDto(RepositoryDto repositoryDto) => Repository(
        id: repositoryDto.id,
        name: repositoryDto.name,
        description: repositoryDto.description,
        owner: Owner.fromOwnerDto(repositoryDto.owner),
        stars: repositoryDto.stars,
      );
}
