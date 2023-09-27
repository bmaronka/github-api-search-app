// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:github_search_app/domain/repositories/model/repository.dart'
    as _i8;
import 'package:github_search_app/presentation/screens/error_page/error_page.dart'
    as _i1;
import 'package:github_search_app/presentation/screens/home_screen/home_screen.dart'
    as _i2;
import 'package:github_search_app/presentation/screens/loading_page/loading_page.dart'
    as _i3;
import 'package:github_search_app/presentation/screens/repository_details_screen/repository_details_screen.dart'
    as _i4;
import 'package:github_search_app/presentation/screens/webview_screen/webview_screen.dart'
    as _i5;

abstract class $MainRouter extends _i6.RootStackRouter {
  $MainRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    ErrorRoute.name: (routeData) {
      final args = routeData.argsAs<ErrorRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ErrorPage(
          args.error,
          title: args.title,
          onConfirm: args.onConfirm,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    LoadingRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoadingPage(),
      );
    },
    RepositoryDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RepositoryDetailsRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.RepositoryDetailsScreen(
          repository: args.repository,
          key: args.key,
        ),
      );
    },
    WebViewRoute.name: (routeData) {
      final args = routeData.argsAs<WebViewRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.WebViewScreen(
          url: args.url,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ErrorPage]
class ErrorRoute extends _i6.PageRouteInfo<ErrorRouteArgs> {
  ErrorRoute({
    required Object error,
    String? title,
    void Function()? onConfirm,
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          ErrorRoute.name,
          args: ErrorRouteArgs(
            error: error,
            title: title,
            onConfirm: onConfirm,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ErrorRoute';

  static const _i6.PageInfo<ErrorRouteArgs> page =
      _i6.PageInfo<ErrorRouteArgs>(name);
}

class ErrorRouteArgs {
  const ErrorRouteArgs({
    required this.error,
    this.title,
    this.onConfirm,
    this.key,
  });

  final Object error;

  final String? title;

  final void Function()? onConfirm;

  final _i7.Key? key;

  @override
  String toString() {
    return 'ErrorRouteArgs{error: $error, title: $title, onConfirm: $onConfirm, key: $key}';
  }
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoadingPage]
class LoadingRoute extends _i6.PageRouteInfo<void> {
  const LoadingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoadingRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RepositoryDetailsScreen]
class RepositoryDetailsRoute
    extends _i6.PageRouteInfo<RepositoryDetailsRouteArgs> {
  RepositoryDetailsRoute({
    required _i8.Repository repository,
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          RepositoryDetailsRoute.name,
          args: RepositoryDetailsRouteArgs(
            repository: repository,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RepositoryDetailsRoute';

  static const _i6.PageInfo<RepositoryDetailsRouteArgs> page =
      _i6.PageInfo<RepositoryDetailsRouteArgs>(name);
}

class RepositoryDetailsRouteArgs {
  const RepositoryDetailsRouteArgs({
    required this.repository,
    this.key,
  });

  final _i8.Repository repository;

  final _i7.Key? key;

  @override
  String toString() {
    return 'RepositoryDetailsRouteArgs{repository: $repository, key: $key}';
  }
}

/// generated route for
/// [_i5.WebViewScreen]
class WebViewRoute extends _i6.PageRouteInfo<WebViewRouteArgs> {
  WebViewRoute({
    required String url,
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          WebViewRoute.name,
          args: WebViewRouteArgs(
            url: url,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const _i6.PageInfo<WebViewRouteArgs> page =
      _i6.PageInfo<WebViewRouteArgs>(name);
}

class WebViewRouteArgs {
  const WebViewRouteArgs({
    required this.url,
    this.key,
  });

  final String url;

  final _i7.Key? key;

  @override
  String toString() {
    return 'WebViewRouteArgs{url: $url, key: $key}';
  }
}
