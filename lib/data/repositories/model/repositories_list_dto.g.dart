// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoriesListDto _$RepositoriesListDtoFromJson(Map<String, dynamic> json) =>
    RepositoriesListDto(
      (json['items'] as List<dynamic>)
          .map((e) => RepositoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
