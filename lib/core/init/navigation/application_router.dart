import 'package:auto_route/auto_route.dart';
import '../../../modules/plan/splash/view/splash_view.dart';
import '../../../modules/plan/login/view/login_view.dart';
import '../../../modules/plan/home/view/home_view.dart';
import '../../../modules/plan/main/view/main_view.dart';
import '../../../modules/plan/profile/view/profile_view.dart';
import '../../../modules/plan/create_plan/view/create_plan_view.dart';
import '../../../modules/plan/create_plan/subviews/plan/view/plan_view.dart';

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
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          children: [
            AutoRoute(
              page: MainRoute.page,
              path: 'main',
            ),
            AutoRoute(
              page: CreatePlanRoute.page,
              path: 'createPlan',
              children: [
                AutoRoute(
                  page: PlanRoute.page,
                  path: 'subPlan',
                ),
              ],
            ),
            AutoRoute(
              page: ProfileRoute.page,
              path: 'profile',
            ),
          ],
        ),
      ];
}
