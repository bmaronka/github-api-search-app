// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryDto _$RepositoryDtoFromJson(Map<String, dynamic> json) =>
    RepositoryDto(
      json['id'] as int,
      json['name'] as String,
      json['description'] as String?,
      OwnerDto.fromJson(json['owner'] as Map<String, dynamic>),
      json['stargazers_count'] as int,
    );
