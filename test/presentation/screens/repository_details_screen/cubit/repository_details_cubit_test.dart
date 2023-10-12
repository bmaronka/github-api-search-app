import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/model/offline_error.dart';
import 'package:github_search_app/domain/issues/model/issue.dart';
import 'package:github_search_app/domain/model/shared/owner.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/domain/use_case/issues/get_repo_issues_use_case.dart';
import 'package:github_search_app/presentation/screens/repository_details_screen/cubit/repository_details_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'repository_details_cubit_test.mocks.dart';

@GenerateMocks([
  GetRepoIssuesUseCase,
])
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late GetRepoIssuesUseCase getRepoIssuesUseCase;

  late RepositoryDetailsCubit cubit;

  final error = DioException(requestOptions: RequestOptions());
  final offlineError = OfflineError(error);

  setUp(() {
    getRepoIssuesUseCase = MockGetRepoIssuesUseCase();

    cubit = RepositoryDetailsCubit(getRepoIssuesUseCase);
  });

  test(
    'has initial loading state',
    () {
      expect(
        cubit.state,
        const RepositoryDetailsState.loading(),
      );
    },
  );

  group(
    'test _fetchRepoIssues',
    () {
      const testOwner = 'owner';
      const testRepo = 'repo';
      const testPage = 1;
      final repository = Repository(
        id: 1,
        name: testRepo,
        description: 'description',
        owner: Owner(id: 1, name: testOwner, avatarUrl: 'www.avatarUrl1.com'),
        stars: 1,
      );
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

      blocTest(
        'getting issues succesfully',
        act: (_) async {
          when(getRepoIssuesUseCase(testOwner, testRepo, page: testPage)).thenAnswer((_) => Future.value(issues));

          await cubit.init(repository);
        },
        build: () => cubit,
        expect: () => [
          RepositoryDetailsState.loaded(
            issues: issues,
            loadingMore: false,
          ),
        ],
      );

      blocTest(
        'getting issues with error',
        act: (_) async {
          when(getRepoIssuesUseCase(testOwner, testRepo, page: testPage)).thenThrow(error);

          await cubit.init(repository);
        },
        build: () => cubit,
        expect: () => [
          RepositoryDetailsState.showErrorSnackBar(error),
          const RepositoryDetailsState.loading(),
          RepositoryDetailsState.error(error),
        ],
      );

      blocTest(
        'getting issues with offline error',
        act: (_) async {
          when(getRepoIssuesUseCase(testOwner, testRepo, page: testPage)).thenThrow(offlineError);

          await cubit.init(repository);
        },
        build: () => cubit,
        expect: () => [
          RepositoryDetailsState.showErrorSnackBar(offlineError),
          const RepositoryDetailsState.loading(),
          RepositoryDetailsState.error(offlineError),
        ],
      );

      blocTest(
        'refreshing after error',
        act: (_) async {
          when(getRepoIssuesUseCase(testOwner, testRepo, page: testPage)).thenThrow(error);
          await cubit.init(repository);

          when(getRepoIssuesUseCase(testOwner, testRepo, page: testPage)).thenAnswer((_) => Future.value(issues));
          await cubit.refresh();
        },
        build: () => cubit,
        expect: () => [
          RepositoryDetailsState.showErrorSnackBar(error),
          const RepositoryDetailsState.loading(),
          RepositoryDetailsState.error(error),
          const RepositoryDetailsState.loading(),
          RepositoryDetailsState.loaded(
            issues: issues,
            loadingMore: false,
          ),
        ],
      );
    },
  );
}
