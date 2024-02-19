import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planla_app/core/extension/context_extension.dart';

import '../../../../core/base/view/base_view.dart';
import '../view_model/update_plan_navigator_view_model.dart';

@RoutePage(name: 'UpdatePlanNavigatorRoute')
class UpdatePlanNavigatorView extends StatelessWidget {
  const UpdatePlanNavigatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<UpdatePlanNavigatorViewModel>(
      viewModel: UpdatePlanNavigatorViewModel(),
      onModelReady: (viewmodel) {
        viewmodel.setContext(context);
        viewmodel.init();
      },
      onPageBuilder: (context, viewmodel) {
        return Scaffold(
          body: SizedBox(
            width: context.width,
            height: context.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                routeCard(context, "Kullanıcıları Yönet", viewmodel),
                SizedBox(height: 40.w),
                routeCard(context, "Plan Bilgilerini Güncelle", viewmodel),
              ],
            ),
          ),
        );
      },
    );
  }

  GestureDetector routeCard(BuildContext context, String title,
      UpdatePlanNavigatorViewModel viewmodel) {
    return GestureDetector(
      onTap: () => viewmodel.navigateUsersPage(),
      child: Container(
        width: 220.w,
        height: 220.w,
        decoration: BoxDecoration(
          color: context.colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(15.w),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: context.textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
