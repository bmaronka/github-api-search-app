import 'package:github_search_app/data/model/shared/owner_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'issue_dto.g.dart';

@JsonSerializable(createToJson: false)
class IssueDto {
  final int id;
  @JsonKey(name: 'html_url')
  final String url;
  final int number;
  final String state;
  final String title;
  final OwnerDto? assignee;

  const IssueDto(
    this.id,
    this.url,
    this.number,
    this.state,
    this.title,
    this.assignee,
  );

  factory IssueDto.fromJson(Map<String, dynamic> json) => _$IssueDtoFromJson(json);
}
