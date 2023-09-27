import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/domain/repositories/model/issue.dart';
import 'package:github_search_app/domain/repositories/model/owner.dart';
import 'package:github_search_app/domain/repositories/service/repositories_service.dart';
import 'package:github_search_app/domain/use_case/repositories/get_repo_issues_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_repo_issues_use_case_test.mocks.dart';

@GenerateMocks([
  RepositoriesService,
])
void main() {
  late RepositoriesService service;
  late GetRepoIssuesUseCase getRepoIssuesUseCase;

  setUp(() {
    service = MockRepositoriesService();
    getRepoIssuesUseCase = GetRepoIssuesUseCase(service);
  });

  test(
    'get repo issues',
    () async {
      const testOwner = 'owner';
      const testRepo = 'repo';
      const testPage = 1;
      final issues = [
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

      when(service.getRepoIssues(testOwner, testRepo, page: testPage)).thenAnswer((_) => Future.value(issues));

      expect(await getRepoIssuesUseCase(testOwner, testRepo, page: testPage), issues);
    },
  );
}
