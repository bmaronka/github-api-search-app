import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/issues/model/issue_dto.dart';
import 'package:github_search_app/data/model/shared/owner_dto.dart';
import 'package:github_search_app/domain/issues/model/issue.dart';
import 'package:github_search_app/domain/model/shared/owner.dart';

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

  group(
    'test issue extensions',
    () {
      final openedIssues = [
        Issue(
          id: 1,
          url: 'www.issueUrl1.com',
          number: 1,
          status: IssueStatus.open,
          title: 'Issue 1',
          assignee: Owner(id: 1, name: 'Owner 1', avatarUrl: 'www.avatar1.com'),
        ),
        Issue(
          id: 2,
          url: 'www.issueUrl2.com',
          number: 2,
          status: IssueStatus.open,
          title: 'Issue 2',
          assignee: Owner(id: 1, name: 'Owner 1', avatarUrl: 'www.avatar1.com'),
        ),
      ];
      final closedIssues = [
        Issue(
          id: 3,
          url: 'www.issueUrl3.com',
          number: 3,
          status: IssueStatus.closed,
          title: 'Issue 3',
          assignee: Owner(id: 1, name: 'Owner 1', avatarUrl: 'www.avatar1.com'),
        ),
        Issue(
          id: 4,
          url: 'www.issueUrl4.com',
          number: 4,
          status: IssueStatus.closed,
          title: 'Issue 4',
          assignee: Owner(id: 1, name: 'Owner 1', avatarUrl: 'www.avatar1.com'),
        ),
      ];
      final issues = [
        ...openedIssues,
        ...closedIssues,
      ];

      test(
        'get only opened issues',
        () => expect(issues.openedIssues, openedIssues),
      );

      test(
        'get only closed issues',
        () => expect(issues.closedIssues, closedIssues),
      );
    },
  );
}
