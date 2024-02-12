import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/base/view/base_view.dart';
import '../view_model/plan_view_model.dart';

@RoutePage(name: 'PlanRoute')
class PlanView extends StatelessWidget {
  const PlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<PlanViewModel>(
      viewModel: PlanViewModel(),
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
