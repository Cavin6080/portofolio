// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:portfolio_brutalism/screens/about_page.dart' as _i3;
import 'package:portfolio_brutalism/screens/connect_page.dart' as _i4;
import 'package:portfolio_brutalism/screens/home_page.dart' as _i2;
import 'package:portfolio_brutalism/screens/projects_page.dart' as _i1;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    ProjectsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ProjectsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    AboutRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AboutPage(),
      );
    },
    ConnectRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ConnectPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ProjectsPage]
class ProjectsRoute extends _i5.PageRouteInfo<void> {
  const ProjectsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ProjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProjectsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AboutPage]
class AboutRoute extends _i5.PageRouteInfo<void> {
  const AboutRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ConnectPage]
class ConnectRoute extends _i5.PageRouteInfo<void> {
  const ConnectRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ConnectRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConnectRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
