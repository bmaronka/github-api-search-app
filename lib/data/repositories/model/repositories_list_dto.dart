import 'package:github_search_app/data/repositories/model/repository_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repositories_list_dto.g.dart';

@JsonSerializable(createToJson: false)
class RepositoriesListDto {
  @JsonKey(name: 'items')
  final List<RepositoryDto> repositories;

  const RepositoriesListDto(this.repositories);

  factory RepositoriesListDto.fromJson(Map<String, dynamic> json) => _$RepositoriesListDtoFromJson(json);
}
