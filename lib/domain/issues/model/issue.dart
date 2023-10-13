import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/data/issues/model/issue_dto.dart';
import 'package:github_search_app/domain/model/shared/owner.dart';
import 'package:github_search_app/extensions/build_context_extension.dart';
import 'package:github_search_app/generated/l10n.dart';

part 'issue.freezed.dart';

enum IssueStatus {
  open,
  all,
  closed;

  static IssueStatus fromString(String state) {
    switch (state) {
      case 'open':
        return IssueStatus.open;
      case 'closed':
        return IssueStatus.closed;
      default:
        return IssueStatus.all;
    }
  }

  Color getColor(BuildContext context) => switch (this) {
        IssueStatus.open => context.getColors().green,
        IssueStatus.closed => context.getColors().violet,
        IssueStatus.all => context.getColors().primary,
      };

  String get label => switch (this) {
        IssueStatus.open => Strings.current.open,
        IssueStatus.closed => Strings.current.closed,
        IssueStatus.all => Strings.current.all,
      };
}

@freezed
class Issue with _$Issue {
  factory Issue({
    required int id,
    required String url,
    required int number,
    required IssueStatus status,
    required String title,
    required Owner? assignee,
  }) = _Issue;

  factory Issue.fromIssueDto(IssueDto issueDto) => Issue(
        id: issueDto.id,
        url: issueDto.url,
        number: issueDto.number,
        status: IssueStatus.fromString(issueDto.state),
        title: issueDto.title,
        assignee: issueDto.assignee != null ? Owner.fromOwnerDto(issueDto.assignee!) : null,
      );
}

extension IssuesListExtension on List<Issue> {
  List<Issue> get openedIssues => where((issue) => issue.status == IssueStatus.open).toList(growable: false);

  List<Issue> get closedIssues => where((issue) => issue.status == IssueStatus.closed).toList(growable: false);
}
