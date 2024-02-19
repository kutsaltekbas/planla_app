import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planla_app/core/extension/context_extension.dart';

import '../../../../core/base/view/base_view.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../view_model/create_plan_view_model.dart';

@RoutePage(name: 'CreatePlanRoute')
class CreatePlanView extends StatelessWidget {
  const CreatePlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<CreatePlanViewModel>(
      viewModel: CreatePlanViewModel(),
      onModelReady: (viewmodel) {
        viewmodel.setContext(context);
        viewmodel.init();
      },
      onPageBuilder: (context, viewmodel) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: context.colorScheme.surface,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100.h),
              child: AppBar(
                elevation: 0,
                actions: [
                  Padding(
                    padding: context.paddingHorizontal2,
                    child: IconButton(
                      onPressed: () => viewmodel.navigateSubPlanPage(),
                      icon: Icon(
                        Icons.add_box_outlined,
                        size: 32.w,
                        color: context.colorScheme.background,
                      ),
                    ),
                  )
                ],
                backgroundColor: context.colorScheme.onPrimary,
                title: Container(
                  margin: context.paddingHorizontal1,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    LocaleKeys.create_plan_title.tr(),
                    style: context.textTheme.displaySmall,
                  ),
                ),
                bottom: TabBar(
                  padding: EdgeInsets.zero,
                  automaticIndicatorColorAdjustment: true,
                  labelStyle: context.textTheme.labelLarge,
                  indicatorColor: context.colorScheme.background,
                  tabs: [
                    tabBuilder(
                      context,
                      LocaleKeys.create_plan_my_plans.tr(),
                      Icons.event_note_rounded,
                    ),
                    tabBuilder(
                      context,
                      LocaleKeys.create_plan_plan_invites.tr(),
                      Icons.collections_bookmark_outlined,
                    ),
                  ],
                ),
              ),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: GestureDetector(
                      onTap: () => viewmodel.navigateEditPlanRoute(),
                      child: Text("Tab TEST 1")),
                ),
                Center(
                  child: Text("Tab TEST 2"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Tab tabBuilder(BuildContext context, String tabText, IconData tabIcon) {
    return Tab(
      iconMargin: EdgeInsets.zero,
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            tabIcon,
            color: context.colorScheme.background,
          ),
          SizedBox(width: 5.w),
          Text(
            tabText,
            style: context.textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
