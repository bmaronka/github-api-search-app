// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_search_app_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubSearchAppBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLocale? locale) idle,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(AppLocale locale) switchLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppLocale? locale)? idle,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(AppLocale locale)? switchLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLocale? locale)? idle,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(AppLocale locale)? switchLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GithubSearchAppBarStateIdle value) idle,
    required TResult Function(_GithubSearchAppBarStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_GithubSearchAppBarStateSwitchLocale value)
        switchLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GithubSearchAppBarStateIdle value)? idle,
    TResult? Function(_GithubSearchAppBarStateShowErrorSnackBar value)?
        showErrorSnackBar,
    TResult? Function(_GithubSearchAppBarStateSwitchLocale value)? switchLocale,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GithubSearchAppBarStateIdle value)? idle,
    TResult Function(_GithubSearchAppBarStateShowErrorSnackBar value)?
        showErrorSnackBar,
    TResult Function(_GithubSearchAppBarStateSwitchLocale value)? switchLocale,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubSearchAppBarStateCopyWith<$Res> {
  factory $GithubSearchAppBarStateCopyWith(GithubSearchAppBarState value,
          $Res Function(GithubSearchAppBarState) then) =
      _$GithubSearchAppBarStateCopyWithImpl<$Res, GithubSearchAppBarState>;
}

/// @nodoc
class _$GithubSearchAppBarStateCopyWithImpl<$Res,
        $Val extends GithubSearchAppBarState>
    implements $GithubSearchAppBarStateCopyWith<$Res> {
  _$GithubSearchAppBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GithubSearchAppBarStateIdleCopyWith<$Res> {
  factory _$$_GithubSearchAppBarStateIdleCopyWith(
          _$_GithubSearchAppBarStateIdle value,
          $Res Function(_$_GithubSearchAppBarStateIdle) then) =
      __$$_GithubSearchAppBarStateIdleCopyWithImpl<$Res>;
  @useResult
  $Res call({AppLocale? locale});
}

/// @nodoc
class __$$_GithubSearchAppBarStateIdleCopyWithImpl<$Res>
    extends _$GithubSearchAppBarStateCopyWithImpl<$Res,
        _$_GithubSearchAppBarStateIdle>
    implements _$$_GithubSearchAppBarStateIdleCopyWith<$Res> {
  __$$_GithubSearchAppBarStateIdleCopyWithImpl(
      _$_GithubSearchAppBarStateIdle _value,
      $Res Function(_$_GithubSearchAppBarStateIdle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_$_GithubSearchAppBarStateIdle(
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocale?,
    ));
  }
}

/// @nodoc

class _$_GithubSearchAppBarStateIdle implements _GithubSearchAppBarStateIdle {
  const _$_GithubSearchAppBarStateIdle({required this.locale});

  @override
  final AppLocale? locale;

  @override
  String toString() {
    return 'GithubSearchAppBarState.idle(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubSearchAppBarStateIdle &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubSearchAppBarStateIdleCopyWith<_$_GithubSearchAppBarStateIdle>
      get copyWith => __$$_GithubSearchAppBarStateIdleCopyWithImpl<
          _$_GithubSearchAppBarStateIdle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLocale? locale) idle,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(AppLocale locale) switchLocale,
  }) {
    return idle(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppLocale? locale)? idle,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(AppLocale locale)? switchLocale,
  }) {
    return idle?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLocale? locale)? idle,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(AppLocale locale)? switchLocale,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GithubSearchAppBarStateIdle value) idle,
    required TResult Function(_GithubSearchAppBarStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_GithubSearchAppBarStateSwitchLocale value)
        switchLocale,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GithubSearchAppBarStateIdle value)? idle,
    TResult? Function(_GithubSearchAppBarStateShowErrorSnackBar value)?
        showErrorSnackBar,
    TResult? Function(_GithubSearchAppBarStateSwitchLocale value)? switchLocale,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GithubSearchAppBarStateIdle value)? idle,
    TResult Function(_GithubSearchAppBarStateShowErrorSnackBar value)?
        showErrorSnackBar,
    TResult Function(_GithubSearchAppBarStateSwitchLocale value)? switchLocale,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _GithubSearchAppBarStateIdle
    implements GithubSearchAppBarState, GithubSearchAppBarStateBuilder {
  const factory _GithubSearchAppBarStateIdle(
      {required final AppLocale? locale}) = _$_GithubSearchAppBarStateIdle;

  AppLocale? get locale;
  @JsonKey(ignore: true)
  _$$_GithubSearchAppBarStateIdleCopyWith<_$_GithubSearchAppBarStateIdle>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GithubSearchAppBarStateShowErrorSnackBarCopyWith<$Res> {
  factory _$$_GithubSearchAppBarStateShowErrorSnackBarCopyWith(
          _$_GithubSearchAppBarStateShowErrorSnackBar value,
          $Res Function(_$_GithubSearchAppBarStateShowErrorSnackBar) then) =
      __$$_GithubSearchAppBarStateShowErrorSnackBarCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$_GithubSearchAppBarStateShowErrorSnackBarCopyWithImpl<$Res>
    extends _$GithubSearchAppBarStateCopyWithImpl<$Res,
        _$_GithubSearchAppBarStateShowErrorSnackBar>
    implements _$$_GithubSearchAppBarStateShowErrorSnackBarCopyWith<$Res> {
  __$$_GithubSearchAppBarStateShowErrorSnackBarCopyWithImpl(
      _$_GithubSearchAppBarStateShowErrorSnackBar _value,
      $Res Function(_$_GithubSearchAppBarStateShowErrorSnackBar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_GithubSearchAppBarStateShowErrorSnackBar(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_GithubSearchAppBarStateShowErrorSnackBar
    implements _GithubSearchAppBarStateShowErrorSnackBar {
  const _$_GithubSearchAppBarStateShowErrorSnackBar(this.error);

  @override
  final Object error;

  @override
  String toString() {
    return 'GithubSearchAppBarState.showErrorSnackBar(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubSearchAppBarStateShowErrorSnackBar &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubSearchAppBarStateShowErrorSnackBarCopyWith<
          _$_GithubSearchAppBarStateShowErrorSnackBar>
      get copyWith => __$$_GithubSearchAppBarStateShowErrorSnackBarCopyWithImpl<
          _$_GithubSearchAppBarStateShowErrorSnackBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLocale? locale) idle,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(AppLocale locale) switchLocale,
  }) {
    return showErrorSnackBar(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppLocale? locale)? idle,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(AppLocale locale)? switchLocale,
  }) {
    return showErrorSnackBar?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLocale? locale)? idle,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(AppLocale locale)? switchLocale,
    required TResult orElse(),
  }) {
    if (showErrorSnackBar != null) {
      return showErrorSnackBar(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GithubSearchAppBarStateIdle value) idle,
    required TResult Function(_GithubSearchAppBarStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_GithubSearchAppBarStateSwitchLocale value)
        switchLocale,
  }) {
    return showErrorSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GithubSearchAppBarStateIdle value)? idle,
    TResult? Function(_GithubSearchAppBarStateShowErrorSnackBar value)?
        showErrorSnackBar,
    TResult? Function(_GithubSearchAppBarStateSwitchLocale value)? switchLocale,
  }) {
    return showErrorSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GithubSearchAppBarStateIdle value)? idle,
    TResult Function(_GithubSearchAppBarStateShowErrorSnackBar value)?
        showErrorSnackBar,
    TResult Function(_GithubSearchAppBarStateSwitchLocale value)? switchLocale,
    required TResult orElse(),
  }) {
    if (showErrorSnackBar != null) {
      return showErrorSnackBar(this);
    }
    return orElse();
  }
}

abstract class _GithubSearchAppBarStateShowErrorSnackBar
    implements GithubSearchAppBarState, GithubSearchAppBarStateListener {
  const factory _GithubSearchAppBarStateShowErrorSnackBar(final Object error) =
      _$_GithubSearchAppBarStateShowErrorSnackBar;

  Object get error;
  @JsonKey(ignore: true)
  _$$_GithubSearchAppBarStateShowErrorSnackBarCopyWith<
          _$_GithubSearchAppBarStateShowErrorSnackBar>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GithubSearchAppBarStateSwitchLocaleCopyWith<$Res> {
  factory _$$_GithubSearchAppBarStateSwitchLocaleCopyWith(
          _$_GithubSearchAppBarStateSwitchLocale value,
          $Res Function(_$_GithubSearchAppBarStateSwitchLocale) then) =
      __$$_GithubSearchAppBarStateSwitchLocaleCopyWithImpl<$Res>;
  @useResult
  $Res call({AppLocale locale});
}

/// @nodoc
class __$$_GithubSearchAppBarStateSwitchLocaleCopyWithImpl<$Res>
    extends _$GithubSearchAppBarStateCopyWithImpl<$Res,
        _$_GithubSearchAppBarStateSwitchLocale>
    implements _$$_GithubSearchAppBarStateSwitchLocaleCopyWith<$Res> {
  __$$_GithubSearchAppBarStateSwitchLocaleCopyWithImpl(
      _$_GithubSearchAppBarStateSwitchLocale _value,
      $Res Function(_$_GithubSearchAppBarStateSwitchLocale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$_GithubSearchAppBarStateSwitchLocale(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as AppLocale,
    ));
  }
}

/// @nodoc

class _$_GithubSearchAppBarStateSwitchLocale
    implements _GithubSearchAppBarStateSwitchLocale {
  const _$_GithubSearchAppBarStateSwitchLocale(this.locale);

  @override
  final AppLocale locale;

  @override
  String toString() {
    return 'GithubSearchAppBarState.switchLocale(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GithubSearchAppBarStateSwitchLocale &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GithubSearchAppBarStateSwitchLocaleCopyWith<
          _$_GithubSearchAppBarStateSwitchLocale>
      get copyWith => __$$_GithubSearchAppBarStateSwitchLocaleCopyWithImpl<
          _$_GithubSearchAppBarStateSwitchLocale>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppLocale? locale) idle,
    required TResult Function(Object error) showErrorSnackBar,
    required TResult Function(AppLocale locale) switchLocale,
  }) {
    return switchLocale(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppLocale? locale)? idle,
    TResult? Function(Object error)? showErrorSnackBar,
    TResult? Function(AppLocale locale)? switchLocale,
  }) {
    return switchLocale?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppLocale? locale)? idle,
    TResult Function(Object error)? showErrorSnackBar,
    TResult Function(AppLocale locale)? switchLocale,
    required TResult orElse(),
  }) {
    if (switchLocale != null) {
      return switchLocale(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GithubSearchAppBarStateIdle value) idle,
    required TResult Function(_GithubSearchAppBarStateShowErrorSnackBar value)
        showErrorSnackBar,
    required TResult Function(_GithubSearchAppBarStateSwitchLocale value)
        switchLocale,
  }) {
    return switchLocale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GithubSearchAppBarStateIdle value)? idle,
    TResult? Function(_GithubSearchAppBarStateShowErrorSnackBar value)?
        showErrorSnackBar,
    TResult? Function(_GithubSearchAppBarStateSwitchLocale value)? switchLocale,
  }) {
    return switchLocale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GithubSearchAppBarStateIdle value)? idle,
    TResult Function(_GithubSearchAppBarStateShowErrorSnackBar value)?
        showErrorSnackBar,
    TResult Function(_GithubSearchAppBarStateSwitchLocale value)? switchLocale,
    required TResult orElse(),
  }) {
    if (switchLocale != null) {
      return switchLocale(this);
    }
    return orElse();
  }
}

abstract class _GithubSearchAppBarStateSwitchLocale
    implements GithubSearchAppBarState, GithubSearchAppBarStateListener {
  const factory _GithubSearchAppBarStateSwitchLocale(final AppLocale locale) =
      _$_GithubSearchAppBarStateSwitchLocale;

  AppLocale get locale;
  @JsonKey(ignore: true)
  _$$_GithubSearchAppBarStateSwitchLocaleCopyWith<
          _$_GithubSearchAppBarStateSwitchLocale>
      get copyWith => throw _privateConstructorUsedError;
}
