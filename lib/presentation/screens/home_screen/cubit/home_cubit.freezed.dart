// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)
        loaded,
    required TResult Function(Object error) error,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(ThemeType theme) changeThemeMode,
    required TResult Function() showNoMoreRepositoriesSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult? Function(Object error)? error,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(ThemeType theme)? changeThemeMode,
    TResult? Function()? showNoMoreRepositoriesSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult Function(Object error)? error,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(ThemeType theme)? changeThemeMode,
    TResult Function()? showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_HomeStateChangeThemeMode value) changeThemeMode,
    required TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)
        showNoMoreRepositoriesSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
    TResult? Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult? Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult? Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeStateLoadedCopyWith<$Res> {
  factory _$$_HomeStateLoadedCopyWith(
          _$_HomeStateLoaded value, $Res Function(_$_HomeStateLoaded) then) =
      __$$_HomeStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Repository> repositories,
      bool loading,
      bool loadingMore,
      bool wasSearched});
}

/// @nodoc
class __$$_HomeStateLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateLoaded>
    implements _$$_HomeStateLoadedCopyWith<$Res> {
  __$$_HomeStateLoadedCopyWithImpl(
      _$_HomeStateLoaded _value, $Res Function(_$_HomeStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = null,
    Object? loading = null,
    Object? loadingMore = null,
    Object? wasSearched = null,
  }) {
    return _then(_$_HomeStateLoaded(
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<Repository>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      wasSearched: null == wasSearched
          ? _value.wasSearched
          : wasSearched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeStateLoaded implements _HomeStateLoaded {
  const _$_HomeStateLoaded(
      {required final List<Repository> repositories,
      required this.loading,
      required this.loadingMore,
      required this.wasSearched})
      : _repositories = repositories;

  final List<Repository> _repositories;
  @override
  List<Repository> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  @override
  final bool loading;
  @override
  final bool loadingMore;
  @override
  final bool wasSearched;

  @override
  String toString() {
    return 'HomeState.loaded(repositories: $repositories, loading: $loading, loadingMore: $loadingMore, wasSearched: $wasSearched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore) &&
            (identical(other.wasSearched, wasSearched) ||
                other.wasSearched == wasSearched));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_repositories),
      loading,
      loadingMore,
      wasSearched);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateLoadedCopyWith<_$_HomeStateLoaded> get copyWith =>
      __$$_HomeStateLoadedCopyWithImpl<_$_HomeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)
        loaded,
    required TResult Function(Object error) error,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(ThemeType theme) changeThemeMode,
    required TResult Function() showNoMoreRepositoriesSnackBar,
  }) {
    return loaded(repositories, loading, loadingMore, wasSearched);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult? Function(Object error)? error,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(ThemeType theme)? changeThemeMode,
    TResult? Function()? showNoMoreRepositoriesSnackBar,
  }) {
    return loaded?.call(repositories, loading, loadingMore, wasSearched);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult Function(Object error)? error,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(ThemeType theme)? changeThemeMode,
    TResult Function()? showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(repositories, loading, loadingMore, wasSearched);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_HomeStateChangeThemeMode value) changeThemeMode,
    required TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)
        showNoMoreRepositoriesSnackBar,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
    TResult? Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult? Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult? Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeStateLoaded implements HomeState, HomeStateBuilder {
  const factory _HomeStateLoaded(
      {required final List<Repository> repositories,
      required final bool loading,
      required final bool loadingMore,
      required final bool wasSearched}) = _$_HomeStateLoaded;

  List<Repository> get repositories;
  bool get loading;
  bool get loadingMore;
  bool get wasSearched;
  @JsonKey(ignore: true)
  _$$_HomeStateLoadedCopyWith<_$_HomeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeStateErrorCopyWith<$Res> {
  factory _$$_HomeStateErrorCopyWith(
          _$_HomeStateError value, $Res Function(_$_HomeStateError) then) =
      __$$_HomeStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_HomeStateErrorCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateError>
    implements _$$_HomeStateErrorCopyWith<$Res> {
  __$$_HomeStateErrorCopyWithImpl(
      _$_HomeStateError _value, $Res Function(_$_HomeStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_HomeStateError(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_HomeStateError implements _HomeStateError {
  const _$_HomeStateError(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateErrorCopyWith<_$_HomeStateError> get copyWith =>
      __$$_HomeStateErrorCopyWithImpl<_$_HomeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)
        loaded,
    required TResult Function(Object error) error,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(ThemeType theme) changeThemeMode,
    required TResult Function() showNoMoreRepositoriesSnackBar,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult? Function(Object error)? error,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(ThemeType theme)? changeThemeMode,
    TResult? Function()? showNoMoreRepositoriesSnackBar,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult Function(Object error)? error,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(ThemeType theme)? changeThemeMode,
    TResult Function()? showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_HomeStateChangeThemeMode value) changeThemeMode,
    required TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)
        showNoMoreRepositoriesSnackBar,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
    TResult? Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult? Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult? Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeStateError implements HomeState, HomeStateBuilder {
  const factory _HomeStateError(final Object error) = _$_HomeStateError;

  Object get error;
  @JsonKey(ignore: true)
  _$$_HomeStateErrorCopyWith<_$_HomeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeStateShowErrorSnackBarCopyWith<$Res> {
  factory _$$_HomeStateShowErrorSnackBarCopyWith(
          _$_HomeStateShowErrorSnackBar value,
          $Res Function(_$_HomeStateShowErrorSnackBar) then) =
      __$$_HomeStateShowErrorSnackBarCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_HomeStateShowErrorSnackBarCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateShowErrorSnackBar>
    implements _$$_HomeStateShowErrorSnackBarCopyWith<$Res> {
  __$$_HomeStateShowErrorSnackBarCopyWithImpl(
      _$_HomeStateShowErrorSnackBar _value,
      $Res Function(_$_HomeStateShowErrorSnackBar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_HomeStateShowErrorSnackBar(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_HomeStateShowErrorSnackBar implements _HomeStateShowErrorSnackBar {
  const _$_HomeStateShowErrorSnackBar(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'HomeState.showErrorSnackBar(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateShowErrorSnackBar &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateShowErrorSnackBarCopyWith<_$_HomeStateShowErrorSnackBar>
      get copyWith => __$$_HomeStateShowErrorSnackBarCopyWithImpl<
          _$_HomeStateShowErrorSnackBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)
        loaded,
    required TResult Function(Object error) error,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(ThemeType theme) changeThemeMode,
    required TResult Function() showNoMoreRepositoriesSnackBar,
  }) {
    return showErrorSnackBar(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult? Function(Object error)? error,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(ThemeType theme)? changeThemeMode,
    TResult? Function()? showNoMoreRepositoriesSnackBar,
  }) {
    return showErrorSnackBar?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult Function(Object error)? error,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(ThemeType theme)? changeThemeMode,
    TResult Function()? showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (showErrorSnackBar != null) {
      return showErrorSnackBar(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_HomeStateChangeThemeMode value) changeThemeMode,
    required TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)
        showNoMoreRepositoriesSnackBar,
  }) {
    return showErrorSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
    TResult? Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult? Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult? Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
  }) {
    return showErrorSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (showErrorSnackBar != null) {
      return showErrorSnackBar(this);
    }
    return orElse();
  }
}

abstract class _HomeStateShowErrorSnackBar
    implements HomeState, HomeStateListener {
  const factory _HomeStateShowErrorSnackBar(final Object error) =
      _$_HomeStateShowErrorSnackBar;

  Object get error;
  @JsonKey(ignore: true)
  _$$_HomeStateShowErrorSnackBarCopyWith<_$_HomeStateShowErrorSnackBar>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeStateChangeThemeModeCopyWith<$Res> {
  factory _$$_HomeStateChangeThemeModeCopyWith(
          _$_HomeStateChangeThemeMode value,
          $Res Function(_$_HomeStateChangeThemeMode) then) =
      __$$_HomeStateChangeThemeModeCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeType theme});
}

/// @nodoc
class __$$_HomeStateChangeThemeModeCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeStateChangeThemeMode>
    implements _$$_HomeStateChangeThemeModeCopyWith<$Res> {
  __$$_HomeStateChangeThemeModeCopyWithImpl(_$_HomeStateChangeThemeMode _value,
      $Res Function(_$_HomeStateChangeThemeMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$_HomeStateChangeThemeMode(
      null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeType,
    ));
  }
}

/// @nodoc

class _$_HomeStateChangeThemeMode implements _HomeStateChangeThemeMode {
  const _$_HomeStateChangeThemeMode(this.theme);

  @override
  final ThemeType theme;

  @override
  String toString() {
    return 'HomeState.changeThemeMode(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateChangeThemeMode &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateChangeThemeModeCopyWith<_$_HomeStateChangeThemeMode>
      get copyWith => __$$_HomeStateChangeThemeModeCopyWithImpl<
          _$_HomeStateChangeThemeMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)
        loaded,
    required TResult Function(Object error) error,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(ThemeType theme) changeThemeMode,
    required TResult Function() showNoMoreRepositoriesSnackBar,
  }) {
    return changeThemeMode(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult? Function(Object error)? error,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(ThemeType theme)? changeThemeMode,
    TResult? Function()? showNoMoreRepositoriesSnackBar,
  }) {
    return changeThemeMode?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult Function(Object error)? error,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(ThemeType theme)? changeThemeMode,
    TResult Function()? showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_HomeStateChangeThemeMode value) changeThemeMode,
    required TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)
        showNoMoreRepositoriesSnackBar,
  }) {
    return changeThemeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
    TResult? Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult? Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult? Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
  }) {
    return changeThemeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (changeThemeMode != null) {
      return changeThemeMode(this);
    }
    return orElse();
  }
}

abstract class _HomeStateChangeThemeMode
    implements HomeState, HomeStateListener {
  const factory _HomeStateChangeThemeMode(final ThemeType theme) =
      _$_HomeStateChangeThemeMode;

  ThemeType get theme;
  @JsonKey(ignore: true)
  _$$_HomeStateChangeThemeModeCopyWith<_$_HomeStateChangeThemeMode>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeStateShowNoMoreRepositoriesSnackBarCopyWith<$Res> {
  factory _$$_HomeStateShowNoMoreRepositoriesSnackBarCopyWith(
          _$_HomeStateShowNoMoreRepositoriesSnackBar value,
          $Res Function(_$_HomeStateShowNoMoreRepositoriesSnackBar) then) =
      __$$_HomeStateShowNoMoreRepositoriesSnackBarCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeStateShowNoMoreRepositoriesSnackBarCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res,
        _$_HomeStateShowNoMoreRepositoriesSnackBar>
    implements _$$_HomeStateShowNoMoreRepositoriesSnackBarCopyWith<$Res> {
  __$$_HomeStateShowNoMoreRepositoriesSnackBarCopyWithImpl(
      _$_HomeStateShowNoMoreRepositoriesSnackBar _value,
      $Res Function(_$_HomeStateShowNoMoreRepositoriesSnackBar) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeStateShowNoMoreRepositoriesSnackBar
    implements _HomeStateShowNoMoreRepositoriesSnackBar {
  const _$_HomeStateShowNoMoreRepositoriesSnackBar();

  @override
  String toString() {
    return 'HomeState.showNoMoreRepositoriesSnackBar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateShowNoMoreRepositoriesSnackBar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)
        loaded,
    required TResult Function(Object error) error,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(ThemeType theme) changeThemeMode,
    required TResult Function() showNoMoreRepositoriesSnackBar,
  }) {
    return showNoMoreRepositoriesSnackBar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult? Function(Object error)? error,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(ThemeType theme)? changeThemeMode,
    TResult? Function()? showNoMoreRepositoriesSnackBar,
  }) {
    return showNoMoreRepositoriesSnackBar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Repository> repositories, bool loading,
            bool loadingMore, bool wasSearched)?
        loaded,
    TResult Function(Object error)? error,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(ThemeType theme)? changeThemeMode,
    TResult Function()? showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (showNoMoreRepositoriesSnackBar != null) {
      return showNoMoreRepositoriesSnackBar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateLoaded value) loaded,
    required TResult Function(_HomeStateError value) error,
    required TResult Function(_HomeStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_HomeStateChangeThemeMode value) changeThemeMode,
    required TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)
        showNoMoreRepositoriesSnackBar,
  }) {
    return showNoMoreRepositoriesSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeStateLoaded value)? loaded,
    TResult? Function(_HomeStateError value)? error,
    TResult? Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult? Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult? Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
  }) {
    return showNoMoreRepositoriesSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateLoaded value)? loaded,
    TResult Function(_HomeStateError value)? error,
    TResult Function(_HomeStateShowErrorSnackBar value)? showErrorSnackBar,
    TResult Function(_HomeStateChangeThemeMode value)? changeThemeMode,
    TResult Function(_HomeStateShowNoMoreRepositoriesSnackBar value)?
        showNoMoreRepositoriesSnackBar,
    required TResult orElse(),
  }) {
    if (showNoMoreRepositoriesSnackBar != null) {
      return showNoMoreRepositoriesSnackBar(this);
    }
    return orElse();
  }
}

abstract class _HomeStateShowNoMoreRepositoriesSnackBar
    implements HomeState, HomeStateListener {
  const factory _HomeStateShowNoMoreRepositoriesSnackBar() =
      _$_HomeStateShowNoMoreRepositoriesSnackBar;
}
