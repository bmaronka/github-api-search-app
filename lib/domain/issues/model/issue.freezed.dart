// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Issue {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  IssueStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Owner? get assignee => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res, Issue>;
  @useResult
  $Res call(
      {int id,
      String url,
      int number,
      IssueStatus status,
      String title,
      Owner? assignee});

  $OwnerCopyWith<$Res>? get assignee;
}

/// @nodoc
class _$IssueCopyWithImpl<$Res, $Val extends Issue>
    implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? number = null,
    Object? status = null,
    Object? title = null,
    Object? assignee = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as IssueStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      assignee: freezed == assignee
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as Owner?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get assignee {
    if (_value.assignee == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.assignee!, (value) {
      return _then(_value.copyWith(assignee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$$_IssueCopyWith(_$_Issue value, $Res Function(_$_Issue) then) =
      __$$_IssueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String url,
      int number,
      IssueStatus status,
      String title,
      Owner? assignee});

  @override
  $OwnerCopyWith<$Res>? get assignee;
}

/// @nodoc
class __$$_IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res, _$_Issue>
    implements _$$_IssueCopyWith<$Res> {
  __$$_IssueCopyWithImpl(_$_Issue _value, $Res Function(_$_Issue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? number = null,
    Object? status = null,
    Object? title = null,
    Object? assignee = freezed,
  }) {
    return _then(_$_Issue(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as IssueStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      assignee: freezed == assignee
          ? _value.assignee
          : assignee // ignore: cast_nullable_to_non_nullable
              as Owner?,
    ));
  }
}

/// @nodoc

class _$_Issue implements _Issue {
  _$_Issue(
      {required this.id,
      required this.url,
      required this.number,
      required this.status,
      required this.title,
      required this.assignee});

  @override
  final int id;
  @override
  final String url;
  @override
  final int number;
  @override
  final IssueStatus status;
  @override
  final String title;
  @override
  final Owner? assignee;

  @override
  String toString() {
    return 'Issue(id: $id, url: $url, number: $number, status: $status, title: $title, assignee: $assignee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Issue &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.assignee, assignee) ||
                other.assignee == assignee));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, number, status, title, assignee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IssueCopyWith<_$_Issue> get copyWith =>
      __$$_IssueCopyWithImpl<_$_Issue>(this, _$identity);
}

abstract class _Issue implements Issue {
  factory _Issue(
      {required final int id,
      required final String url,
      required final int number,
      required final IssueStatus status,
      required final String title,
      required final Owner? assignee}) = _$_Issue;

  @override
  int get id;
  @override
  String get url;
  @override
  int get number;
  @override
  IssueStatus get status;
  @override
  String get title;
  @override
  Owner? get assignee;
  @override
  @JsonKey(ignore: true)
  _$$_IssueCopyWith<_$_Issue> get copyWith =>
      throw _privateConstructorUsedError;
}
