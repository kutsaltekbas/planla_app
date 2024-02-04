import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planla_app/core/init/navigation/application_router.dart';
import '../../../../core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store, BaseViewModel {
  late TabsRouter tRouter;

  @observable
  bool isLoading = false;
  @observable
  String currentRoute = "";

  List<PageRouteInfo> routeList = const [
    MainRoute(),
    CreatePlanRoute(),
    ProfileRoute(),
  ];

  @override
  void setContext(BuildContext context) => buildContext = context;
  @override
  void init() {}

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }

  void initTabsRouter(TabsRouter router) {
    tRouter = router;
  }

  @action
  Future<void> navigateBottomBarTab(route) async {
    await tRouter.navigate(route);
    currentRoute = tRouter.current.name;
  }
}
