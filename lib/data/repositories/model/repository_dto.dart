import 'package:github_search_app/data/model/shared/owner_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repository_dto.g.dart';

@JsonSerializable(createToJson: false)
class RepositoryDto {
  final int id;
  final String name;
  final String? description;
  final OwnerDto owner;
  @JsonKey(name: 'stargazers_count')
  final int stars;

  const RepositoryDto(
    this.id,
    this.name,
    this.description,
    this.owner,
    this.stars,
  );

  factory RepositoryDto.fromJson(Map<String, dynamic> json) => _$RepositoryDtoFromJson(json);
}
