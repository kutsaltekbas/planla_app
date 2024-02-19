import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planla_app/core/init/navigation/application_router.dart';
import '../../../../core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'update_plan_navigator_view_model.g.dart';

class UpdatePlanNavigatorViewModel = _UpdatePlanNavigatorViewModelBase
    with _$UpdatePlanNavigatorViewModel;

abstract class _UpdatePlanNavigatorViewModelBase with Store, BaseViewModel {
  @observable
  bool isLoading = false;

  @override
  void setContext(BuildContext context) => buildContext = context;
  @override
  void init() {}

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }

  void navigateUsersPage() {
    buildContext!.router.push(const EditPlanMembersRoute());
  }
}
