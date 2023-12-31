import 'package:easy_debounce/easy_debounce.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/domain/use_case/repositories/get_repositories_use_case.dart';
import 'package:github_search_app/style/themes.dart';
import 'package:github_search_app/utils/or_else_handlers.dart';
import 'package:github_search_app/utils/safety_cubit.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

const _searchTaskName = 'search';
const _searchDelay = Duration(milliseconds: 700);

@injectable
class HomeCubit extends AppCubit<HomeState> {
  HomeCubit(
    this._getRepositoriesUseCase,
  ) : super(
          const HomeState.loaded(
            repositories: [],
            loading: false,
            loadingMore: false,
            wasSearched: false,
          ),
        );

  final GetRepositoriesUseCase _getRepositoriesUseCase;

  final ScrollController scrollController = ScrollController();
  final _repositories = <Repository>[];
  late ThemeType _themeType;
  int _page = 1;
  String _query = '';

  bool get _isScrolledToBottom => scrollController.position.maxScrollExtent == scrollController.offset;

  void init(ThemeType theme) {
    _themeType = theme;
    _addLoadMoreListener();
  }

  void _addLoadMoreListener() => scrollController.addListener(_loadMore);

  void _removeLoadMoreListener() => scrollController.removeListener(_loadMore);

  void _loadMore() => state.whenOrNull(
        loaded: (repositories, loading, loadingMore, wasSearched) {
          if (_isScrolledToBottom && !loadingMore) {
            _page++;
            _emitLoaded(loadingMore: true);
            _fetchRepositories(hasPreviousRepos: repositories.isNotEmpty);
          }
          return doNothing();
        },
      );

  void searchRepositories(String? query) {
    EasyDebounce.cancel(_searchTaskName);
    EasyDebounce.debounce(
      _searchTaskName,
      _searchDelay,
      () => _searchRepositoriesHandler(query ?? ''),
    );
  }

  void resetSearch() => _searchRepositoriesHandler('');

  Future<void> _searchRepositoriesHandler(String query) async {
    _query = query;
    _repositories.clear();
    _page = 1;

    if (_query.isEmpty) {
      _emitLoaded(wasSearched: false);
      return;
    }

    _emitLoaded(loading: true, wasSearched: false);
    await _fetchRepositories();
  }

  Future<void> _fetchRepositories({bool hasPreviousRepos = false}) async {
    try {
      final repositories = await _getRepositoriesUseCase(
        _query,
        page: _page,
      );
      _repositories.addAll(repositories);

      if (hasPreviousRepos && repositories.isEmpty) {
        _emitListenerState(const HomeState.showNoMoreRepositoriesSnackBar());
      }

      _emitLoaded();
    } catch (error, stacktrace) {
      Fimber.e(
        'Error while getting repositories',
        ex: error,
        stacktrace: stacktrace,
      );
      _emitListenerState(HomeState.showErrorSnackBar(error));
      emit(HomeState.error(error));
    }
  }

  void switchTheme() {
    _themeType = _themeType == ThemeType.light ? ThemeType.dark : ThemeType.light;

    _emitListenerState(HomeState.changeThemeMode(_themeType));
  }

  void _emitLoaded({
    bool loading = false,
    bool loadingMore = false,
    bool wasSearched = true,
  }) =>
      emit(
        HomeState.loaded(
          repositories: [..._repositories],
          loading: loading,
          loadingMore: loadingMore,
          wasSearched: wasSearched,
        ),
      );

  void _emitListenerState(HomeState stateToEmit) {
    final cachedState = state;
    emit(stateToEmit);
    emit(cachedState);
  }

  @override
  Future<void> close() {
    _removeLoadMoreListener();
    scrollController.dispose();
    return super.close();
  }
}
