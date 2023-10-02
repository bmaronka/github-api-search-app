import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/issues/model/issue_dto.dart';
import 'package:github_search_app/data/model/shared/owner_dto.dart';
import 'package:github_search_app/domain/model/shared/owner.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';

void main() {
  group(
    'test mapping from IssueDto to Issue',
    () {
      test(
        'test mapping open status',
        () {
          const issueDto = IssueDto(
            1,
            'www.issueUrl1.com',
            1,
            'open',
            'Issue 1',
            OwnerDto(1, 'Owner 1', 'www.avatar1.com'),
          );
          final issue = Issue(
            id: 1,
            url: 'www.issueUrl1.com',
            number: 1,
            status: IssueStatus.open,
            title: 'Issue 1',
            assignee: Owner(id: 1, name: 'Owner 1', avatarUrl: 'www.avatar1.com'),
          );

          expect(Issue.fromIssueDto(issueDto), issue);
        },
      );

      test(
        'test mapping closed status and null assignee',
        () {
          const issueDto = IssueDto(
            1,
            'www.issueUrl1.com',
            1,
            'closed',
            'Issue 1',
            null,
          );
          final issue = Issue(
            id: 1,
            url: 'www.issueUrl1.com',
            number: 1,
            status: IssueStatus.closed,
            title: 'Issue 1',
            assignee: null,
          );

          expect(Issue.fromIssueDto(issueDto), issue);
        },
      );
    },
  );
}
