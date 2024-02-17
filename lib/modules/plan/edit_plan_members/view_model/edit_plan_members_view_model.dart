import 'package:flutter/material.dart';
import '../../../../core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'edit_plan_members_view_model.g.dart';

class EditPlanMembersViewModel = _EditPlanMembersViewModelBase
    with _$EditPlanMembersViewModel;

abstract class _EditPlanMembersViewModelBase with Store, BaseViewModel {
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
