import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../core/base/view/base_view.dart';
import '../view_model/home_view_model.dart';
import '/core/extension/context_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage<String>(name: 'HomeRoute')
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (viewmodel) {
        viewmodel.setContext(context);
        viewmodel.init();
      },
      onPageBuilder: (context, viewmodel) {
        return AutoTabsScaffold(
            backgroundColor: context.colorScheme.onPrimary,
            routes: viewmodel.routeList,
            transitionBuilder: (context, child, animation) {
              return child;
            },
            extendBody: true,
            bottomNavigationBuilder: (
              context,
              tabsRouter,
            ) {
              viewmodel.initTabsRouter(tabsRouter);

              return bottomBar(context, viewmodel);
            });
      },
    );
  }

  Container bottomBar(BuildContext context, HomeViewModel viewmodel) {
    return Container(
      width: context.width,
      height: 70.h,
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.w), topRight: Radius.circular(30.w)),
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: const Offset(0, 1),
              blurRadius: 10.w)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildBottombarIcon(
                viewmodel,
                viewmodel.routeList[0],
                Icons.home_rounded,
                context,
              ),
              buildBottombarIcon(
                viewmodel,
                viewmodel.routeList[1],
                Icons.dashboard_customize_outlined,
                context,
              ),
              buildBottombarIcon(
                viewmodel,
                viewmodel.routeList[2],
                Icons.person,
                context,
              ),
            ],
          ),
          SizedBox(height: 10.h)
        ],
      ),
    );
  }

  Widget buildBottombarIcon(HomeViewModel viewmodel, PageRouteInfo route,
      IconData icon, BuildContext context) {
    return GestureDetector(
      onTap: () => viewmodel.navigateBottomBarTab(route),
      child: SizedBox(
        width: 25.w,
        height: 25.w,
        child: Icon(
          icon,
          color: viewmodel.tRouter.current.name == route.routeName
              ? context.colorScheme.background
              : context.colorScheme.surface,
          size: 25.w,
        ),
      ),
    );
  }
}
