import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/issues/data_source/issues_data_source.dart';
import 'package:github_search_app/data/issues/model/issue_dto.dart';
import 'package:github_search_app/data/issues/service/issues_service_impl.dart';
import 'package:github_search_app/data/model/shared/owner_dto.dart';
import 'package:github_search_app/domain/model/shared/owner.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'issues_service_impl_test.mocks.dart';

@GenerateMocks([
  IssuesDataSource,
])
void main() {
  late IssuesServiceImpl service;
  late IssuesDataSource dataSource;

  setUp(() {
    dataSource = MockIssuesDataSource();

    service = IssuesServiceImpl(dataSource);
  });

  test(
    'get list of issues',
    () async {
      const issuesState = 'all';
      const testOwner = 'owner';
      const testRepo = 'repo';
      const testPage = 1;

      final issueDtos = [
        const IssueDto(
          1,
          'www.issueUrl1.com',
          1,
          'open',
          'Issue 1',
          OwnerDto(1, 'Owner 1', 'www.avatar1.com'),
        ),
        const IssueDto(
          2,
          'www.issueUrl2.com',
          2,
          'closed',
          'Issue 2',
          OwnerDto(2, 'Owner 2', 'www.avatar2.com'),
        ),
        const IssueDto(
          3,
          'www.issueUrl3.com',
          3,
          'closed',
          'Issue 3',
          null,
        ),
      ];

      final expectedIssues = [
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
          status: IssueStatus.closed,
          title: 'Issue 2',
          assignee: Owner(id: 2, name: 'Owner 2', avatarUrl: 'www.avatar2.com'),
        ),
        Issue(
          id: 3,
          url: 'www.issueUrl3.com',
          number: 3,
          status: IssueStatus.closed,
          title: 'Issue 3',
          assignee: null,
        ),
      ];

      when(dataSource.getIssues(testOwner, testRepo, testPage.toString(), issuesState))
          .thenAnswer((_) => Future.value(issueDtos));

      final repositories = await service.getIssues(testOwner, testRepo, page: testPage);

      expect(repositories, expectedIssues);
    },
  );
}
