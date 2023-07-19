import 'package:auto_route/auto_route.dart';

import 'auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: '/DashBoard',
            page: DashBoard.page,
            initial: true,
            children: [
              AutoRoute(
                path: 'HomeRoute',
                page: HomeRoute.page,
              ),
              AutoRoute(path: 'about', page: AboutRoute.page),
              AutoRoute(path: 'Projects', page: Projects.page),
              AutoRoute(path: 'Experience', page: Experience.page),
              AutoRoute(path: 'contact', page: ContactRoute.page),
            ]),
      ];
}
