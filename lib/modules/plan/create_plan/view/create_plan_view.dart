import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
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
        return Scaffold();
      },
    );
  }
}
