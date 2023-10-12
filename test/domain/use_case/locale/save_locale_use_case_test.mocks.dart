// Mocks generated by Mockito 5.4.2 from annotations
// in github_search_app/test/domain/use_case/locale/save_locale_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:github_search_app/domain/locale/service/locale_service.dart'
    as _i2;
import 'package:github_search_app/style/locales.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [LocaleService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocaleService extends _i1.Mock implements _i2.LocaleService {
  MockLocaleService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<void> saveLocale(_i4.AppLocale? locale) => (super.noSuchMethod(
        Invocation.method(
          #saveLocale,
          [locale],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<_i4.AppLocale> getLocale() => (super.noSuchMethod(
        Invocation.method(
          #getLocale,
          [],
        ),
        returnValue: _i3.Future<_i4.AppLocale>.value(_i4.AppLocale.pl),
      ) as _i3.Future<_i4.AppLocale>);
  @override
  void notifyLocaleChanged(_i2.LocaleEvent? event) => super.noSuchMethod(
        Invocation.method(
          #notifyLocaleChanged,
          [event],
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.Stream<_i2.LocaleEvent> getLocaleChangedStream() => (super.noSuchMethod(
        Invocation.method(
          #getLocaleChangedStream,
          [],
        ),
        returnValue: _i3.Stream<_i2.LocaleEvent>.empty(),
      ) as _i3.Stream<_i2.LocaleEvent>);
}