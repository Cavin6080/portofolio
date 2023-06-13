import 'package:auto_route/auto_route.dart';
import 'package:portfolio_brutalism/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: "/",
      page: HomeRoute.page,
      children: [
        AutoRoute(
          path: 'about',
          page: AboutRoute.page,
        ),
        AutoRoute(
          path: "projects",
          page: ProjectsRoute.page,
        ),
        AutoRoute(
          path: "connect",
          page: ConnectRoute.page,
        ),
      ],
    ),
  ];
}
