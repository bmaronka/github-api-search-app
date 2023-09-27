import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search_app/data/model/offline_error.dart';
import 'package:github_search_app/domain/repositories/model/owner.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/domain/use_case/repositories/get_repositories_use_case.dart';
import 'package:github_search_app/presentation/screens/home_screen/cubit/home_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_cubit_test.mocks.dart';

@GenerateMocks([
  GetRepositoriesUseCase,
])
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  late GetRepositoriesUseCase getRepositoriesUseCase;

  late HomeCubit cubit;

  final error = DioException(requestOptions: RequestOptions());
  final offlineError = OfflineError(error);

  setUp(() {
    getRepositoriesUseCase = MockGetRepositoriesUseCase();

    cubit = HomeCubit(getRepositoriesUseCase);
  });

  test(
    'has initial empty loaded state',
    () {
      expect(
        cubit.state,
        const HomeState.loaded(
          repositories: [],
          loading: false,
          loadingMore: false,
          wasSearched: false,
        ),
      );
    },
  );

  group(
    'test _fetchRepositories',
    () {
      const testQuery = 'test';
      const testPage = 1;
      final repositories = [
        Repository(
          id: 1,
          name: 'Repository 1',
          description: 'Description 1',
          owner: Owner(id: 1, name: 'Owner 1', avatarUrl: 'www.avatar1.com'),
          stars: 1,
        ),
        Repository(
          id: 2,
          name: 'Repository 2',
          description: 'Description 2',
          owner: Owner(id: 2, name: 'Owner 2', avatarUrl: 'www.avatar2.com'),
          stars: 2,
        ),
      ];

      blocTest(
        'getting repositories succesfully',
        act: (_) {
          when(getRepositoriesUseCase(testQuery, page: testPage)).thenAnswer((_) => Future.value(repositories));

          cubit.searchRepositories(testQuery);
        },
        wait: const Duration(milliseconds: 700),
        build: () => cubit,
        expect: () => [
          const HomeState.loaded(
            repositories: [],
            loading: true,
            loadingMore: false,
            wasSearched: false,
          ),
          HomeState.loaded(
            repositories: repositories,
            loading: false,
            loadingMore: false,
            wasSearched: true,
          ),
        ],
      );

      blocTest(
        'getting repositories with error',
        act: (_) {
          when(getRepositoriesUseCase(testQuery, page: testPage)).thenThrow(error);

          cubit.searchRepositories(testQuery);
        },
        wait: const Duration(milliseconds: 700),
        build: () => cubit,
        expect: () => [
          const HomeState.loaded(
            repositories: [],
            loading: true,
            loadingMore: false,
            wasSearched: false,
          ),
          HomeState.showErrorSnackBar(error),
          const HomeState.loaded(
            repositories: [],
            loading: true,
            loadingMore: false,
            wasSearched: false,
          ),
          HomeState.error(error),
        ],
      );

      blocTest(
        'getting repositories with offline error',
        act: (_) {
          when(getRepositoriesUseCase(testQuery, page: testPage)).thenThrow(offlineError);

          cubit.searchRepositories(testQuery);
        },
        wait: const Duration(milliseconds: 700),
        build: () => cubit,
        expect: () => [
          const HomeState.loaded(
            repositories: [],
            loading: true,
            loadingMore: false,
            wasSearched: false,
          ),
          HomeState.showErrorSnackBar(offlineError),
          const HomeState.loaded(
            repositories: [],
            loading: true,
            loadingMore: false,
            wasSearched: false,
          ),
          HomeState.error(offlineError),
        ],
      );

      blocTest(
        'resetting repositories succesfully',
        act: (_) async {
          when(getRepositoriesUseCase(testQuery, page: testPage)).thenAnswer((_) => Future.value(repositories));

          cubit.searchRepositories(testQuery);
          await Future.delayed(const Duration(milliseconds: 800));

          cubit.resetSearch();
        },
        build: () => cubit,
        expect: () => [
          const HomeState.loaded(
            repositories: [],
            loading: true,
            loadingMore: false,
            wasSearched: false,
          ),
          HomeState.loaded(
            repositories: repositories,
            loading: false,
            loadingMore: false,
            wasSearched: true,
          ),
          const HomeState.loaded(
            repositories: [],
            loading: false,
            loadingMore: false,
            wasSearched: false,
          ),
        ],
      );
    },
  );
}
