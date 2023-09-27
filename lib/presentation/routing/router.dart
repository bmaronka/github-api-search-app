import 'package:auto_route/auto_route.dart';
import 'package:github_search_app/presentation/routing/router.gr.dart';

@AutoRouterConfig()
class MainRouter extends $MainRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: RepositoryDetailsRoute.page,
        ),
        AutoRoute(
          page: WebViewRoute.page,
        ),
      ];
}
