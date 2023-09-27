part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  @Implements<HomeStateBuilder>()
  const factory HomeState.loaded({
    required List<Repository> repositories,
    required bool loading,
    required bool loadingMore,
  }) = _HomeStateLoaded;

  @Implements<HomeStateBuilder>()
  const factory HomeState.error(Object error) = _HomeStateError;

  @Implements<HomeStateListener>()
  const factory HomeState.showErrorSnackBar(Object error) = _HomeStateShowErrorSnackBar;

  @Implements<HomeStateListener>()
  const factory HomeState.changeThemeMode(ThemeType theme) = _HomeStateChangeThemeMode;
}

abstract class HomeStateBuilder {}

abstract class HomeStateListener {}
