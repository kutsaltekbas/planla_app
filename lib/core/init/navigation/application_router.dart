import 'package:auto_route/auto_route.dart';
import '../../../modules/plan/splash/view/splash_view.dart';
import '../../../modules/plan/login/view/login_view.dart';

part 'application_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        )
      ];
}
