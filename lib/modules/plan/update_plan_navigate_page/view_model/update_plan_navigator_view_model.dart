import 'package:flutter/material.dart';
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
}
