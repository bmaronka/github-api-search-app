part of 'repository_details_cubit.dart';

@freezed
class RepositoryDetailsState with _$RepositoryDetailsState {
  @Implements<RepositoryDetailsStateBuilder>()
  const factory RepositoryDetailsState.loading() = _RepositoryDetailsStateLoading;

  @Implements<RepositoryDetailsStateBuilder>()
  const factory RepositoryDetailsState.loaded({
    required List<Issue> issues,
    required bool loadingMore,
    required int statusIndex,
  }) = _RepositoryDetailsStateLoaded;

  @Implements<RepositoryDetailsStateBuilder>()
  const factory RepositoryDetailsState.error(Object error) = _RepositoryDetailsStateError;

  @Implements<RepositoryDetailsStateListener>()
  const factory RepositoryDetailsState.showErrorSnackBar(Object error) = _RepositoryDetailsStateShowErrorSnackBar;

  @Implements<RepositoryDetailsStateListener>()
  const factory RepositoryDetailsState.showNoMoreIssuesSnackBar() = _RepositoryDetailsStateShowNoMoreIssuesSnackBar;
}

abstract class RepositoryDetailsStateBuilder {}

abstract class RepositoryDetailsStateListener {}
