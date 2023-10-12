// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i6;
import 'package:github_search_app/domain/repositories/model/repository.dart'
    as _i5;
import 'package:github_search_app/presentation/screens/home_screen/home_screen.dart'
    as _i1;
import 'package:github_search_app/presentation/screens/repository_details_screen/repository_details_screen.dart'
    as _i2;
import 'package:github_search_app/presentation/screens/webview_screen/webview_screen.dart'
    as _i3;

abstract class $MainRouter extends _i4.RootStackRouter {
  $MainRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    RepositoryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RepositoryDetailsRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.RepositoryDetailsScreen(
          repository: args.repository,
          key: args.key,
        ),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.WebViewScreen(
          url: args.url,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RepositoryDetailsScreen]
class RepositoryDetailsRoute
    extends _i4.PageRouteInfo<RepositoryDetailsRouteArgs> {
  RepositoryDetailsRoute({
    required _i5.Repository repository,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          RepositoryDetailsRoute.name,
          args: RepositoryDetailsRouteArgs(
            repository: repository,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RepositoryDetailsRoute';

  static const _i4.PageInfo<RepositoryDetailsRouteArgs> page =
      _i4.PageInfo<RepositoryDetailsRouteArgs>(name);
}

class RepositoryDetailsRouteArgs {
  const RepositoryDetailsRouteArgs({
    required this.repository,
    this.key,
  });

  final _i5.Repository repository;

  final _i6.Key? key;

  @override
  String toString() {
    return 'RepositoryDetailsRouteArgs{repository: $repository, key: $key}';
  }
}

/// generated route for
/// [_i3.WebViewScreen]
class WebViewRoute extends _i4.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    required String url,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            url: url,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const _i4.PageInfo<WebViewRouteArgs> page =
      _i4.PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    required this.url,
    this.key,
  });

  final String url;

  final _i6.Key? key;

  @override
  String toString() {
    return 'WebViewRouteArgs{url: $url, key: $key}';
  }
}
