// Mocks generated by Mockito 5.4.2 from annotations
// in github_search_app/test/domain/use_case/repositories/get_repositories_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:github_search_app/domain/repositories/model/repository.dart'
    as _i4;
import 'package:github_search_app/domain/repositories/service/repositories_service.dart'
    as _i2;
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

/// A class which mocks [RepositoriesService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRepositoriesService extends _i1.Mock
    implements _i2.RepositoriesService {
  MockRepositoriesService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Repository>> getRepositories(
    String? query, {
    required int? page,
    bool? tryCache = true,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getRepositories,
          [query],
          {
            #page: page,
            #tryCache: tryCache,
          },
        ),
        returnValue: _i3.Future<List<_i4.Repository>>.value(<_i4.Repository>[]),
      ) as _i3.Future<List<_i4.Repository>>);
}
