// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:henryportfolio/views/about.dart' as _i2;
import 'package:henryportfolio/views/contactPage.dart' as _i6;
import 'package:henryportfolio/views/dashBoard_screen.dart' as _i5;
import 'package:henryportfolio/views/ExperiencePage.dart' as _i3;
import 'package:henryportfolio/views/homePage.dart' as _i1;
import 'package:henryportfolio/views/projects.dart' as _i4;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    AboutRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AboutPage(),
      );
    },
    Experience.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Experience(),
      );
    },
    Projects.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Projects(),
      );
    },
    DashBoard.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashBoard(),
      );
    },
    ContactRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ContactScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AboutPage]
class AboutRoute extends _i7.PageRouteInfo<void> {
  const AboutRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Experience]
class Experience extends _i7.PageRouteInfo<void> {
  const Experience({List<_i7.PageRouteInfo>? children})
      : super(
          Experience.name,
          initialChildren: children,
        );

  static const String name = 'Experience';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Projects]
class Projects extends _i7.PageRouteInfo<void> {
  const Projects({List<_i7.PageRouteInfo>? children})
      : super(
          Projects.name,
          initialChildren: children,
        );

  static const String name = 'Projects';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DashBoard]
class DashBoard extends _i7.PageRouteInfo<void> {
  const DashBoard({List<_i7.PageRouteInfo>? children})
      : super(
          DashBoard.name,
          initialChildren: children,
        );

  static const String name = 'DashBoard';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ContactScreen]
class ContactRoute extends _i7.PageRouteInfo<void> {
  const ContactRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ContactRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
