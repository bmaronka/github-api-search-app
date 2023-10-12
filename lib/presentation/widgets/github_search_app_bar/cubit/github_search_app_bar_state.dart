part of 'github_search_app_bar_cubit.dart';

@freezed
class GithubSearchAppBarState with _$GithubSearchAppBarState {
  @Implements<GithubSearchAppBarStateBuilder>()
  const factory GithubSearchAppBarState.idle({
    required AppLocale? locale,
  }) = _GithubSearchAppBarStateIdle;

  @Implements<GithubSearchAppBarStateListener>()
  const factory GithubSearchAppBarState.showErrorSnackBar(Object error) = _GithubSearchAppBarStateShowErrorSnackBar;

  @Implements<GithubSearchAppBarStateListener>()
  const factory GithubSearchAppBarState.switchLocale(AppLocale locale) = _GithubSearchAppBarStateSwitchLocale;
}

abstract class GithubSearchAppBarStateBuilder {}

abstract class GithubSearchAppBarStateListener {}
