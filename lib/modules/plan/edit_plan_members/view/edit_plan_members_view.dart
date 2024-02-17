import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../view_model/edit_plan_members_view_model.dart';

@RoutePage(name: 'EditPlanMembersRoute')
class EditPlanMembersView extends StatelessWidget {
  const EditPlanMembersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<EditPlanMembersViewModel>(
      viewModel: EditPlanMembersViewModel(),
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
