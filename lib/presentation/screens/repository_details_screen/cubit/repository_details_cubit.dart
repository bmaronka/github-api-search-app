import 'package:fimber_io/fimber_io.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/issues/model/issue.dart';
import 'package:github_search_app/domain/repositories/model/repository.dart';
import 'package:github_search_app/domain/use_case/issues/get_repo_issues_use_case.dart';
import 'package:github_search_app/utils/or_else_handlers.dart';
import 'package:github_search_app/utils/safety_cubit.dart';
import 'package:injectable/injectable.dart';

part 'repository_details_cubit.freezed.dart';
part 'repository_details_state.dart';

@injectable
class RepositoryDetailsCubit extends AppCubit<RepositoryDetailsState> {
  RepositoryDetailsCubit(
    this._getRepoIssuesUseCase,
  ) : super(const RepositoryDetailsState.loading());

  final GetRepoIssuesUseCase _getRepoIssuesUseCase;

  final ScrollController scrollController = ScrollController();
  final _issues = <Issue>[];
  late Repository _repository;
  int _page = 1;
  int _statusIndex = 1;

  bool get _isScrolledToBottom => scrollController.position.maxScrollExtent == scrollController.offset;

  List<Issue> get _issuesDueToFilter {
    late List<Issue> issues;
    final status = IssueStatus.values[_statusIndex];

    switch (status) {
      case IssueStatus.open:
        issues = _issues.openedIssues;
      case IssueStatus.all:
        issues = _issues;
      case IssueStatus.closed:
        issues = _issues.closedIssues;
    }

    return issues;
  }

  Future<void> init(Repository repository) async {
    _repository = repository;
    _addLoadMoreListener();
    await _fetchRepoIssues();
  }

  void _addLoadMoreListener() => scrollController.addListener(_loadMore);

  void _removeLoadMoreListener() => scrollController.removeListener(_loadMore);

  void _loadMore() => state.whenOrNull(
        loaded: (issues, loadingMore, statusIndex) {
          if (_isScrolledToBottom && !loadingMore) {
            _page++;
            _emitLoaded(loadingMore: true);
            _fetchRepoIssues(hasPreviousIssues: issues.isNotEmpty);
          }
          return doNothing();
        },
      );

  Future<void> refresh() async {
    emit(const RepositoryDetailsState.loading());
    await _fetchRepoIssues();
  }

  Future<void> _fetchRepoIssues({bool hasPreviousIssues = false}) async {
    try {
      final issues = await _getRepoIssuesUseCase(
        _repository.owner.name,
        _repository.name,
        page: _page,
      );
      _issues.addAll(issues);

      if (hasPreviousIssues && issues.isEmpty) {
        _emitListenerState(const RepositoryDetailsState.showNoMoreIssuesSnackBar());
      }

      _emitLoaded();
    } catch (error, stacktrace) {
      Fimber.e(
        'Error while getting issues',
        ex: error,
        stacktrace: stacktrace,
      );
      _emitListenerState(RepositoryDetailsState.showErrorSnackBar(error));
      emit(RepositoryDetailsState.error(error));
    }
  }

  void setFilterStatus(int index) {
    _statusIndex = index;
    _emitLoaded();
  }

  void _emitLoaded({bool loadingMore = false}) => emit(
        RepositoryDetailsState.loaded(
          issues: [..._issuesDueToFilter],
          loadingMore: loadingMore,
          statusIndex: _statusIndex,
        ),
      );

  void _emitListenerState(RepositoryDetailsState stateToEmit) {
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
