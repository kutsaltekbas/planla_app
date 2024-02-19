import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:planla_app/core/init/navigation/application_router.dart';
import '../../../../core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'create_plan_view_model.g.dart';

class CreatePlanViewModel = _CreatePlanViewModelBase with _$CreatePlanViewModel;

abstract class _CreatePlanViewModelBase with Store, BaseViewModel {
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

  void navigateSubPlanPage() {
    buildContext!.router.push(const PlanRoute());
  }

  void navigateEditPlanRoute() {
    buildContext!.router.push(const UpdatePlanNavigatorRoute());
  }
}
