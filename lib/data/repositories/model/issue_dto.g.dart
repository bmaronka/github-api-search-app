// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IssueDto _$IssueDtoFromJson(Map<String, dynamic> json) => IssueDto(
      json['id'] as int,
      json['html_url'] as String,
      json['number'] as int,
      json['state'] as String,
      json['title'] as String,
      json['assignee'] == null
          ? null
          : OwnerDto.fromJson(json['assignee'] as Map<String, dynamic>),
    );
