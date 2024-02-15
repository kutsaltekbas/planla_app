import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
        return Scaffold();
      },
    );
  }
}
