import 'package:json_annotation/json_annotation.dart';

part 'owner_dto.g.dart';

@JsonSerializable(createToJson: false)
class OwnerDto {
  final int id;
  final String login;
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  const OwnerDto(
    this.id,
    this.login,
    this.avatarUrl,
  );

  factory OwnerDto.fromJson(Map<String, dynamic> json) => _$OwnerDtoFromJson(json);
}
