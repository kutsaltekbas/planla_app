import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../../../core/base/model/base_view_model.dart';
part 'plan_view_model.g.dart';

class PlanViewModel = _PlanViewModelBase with _$PlanViewModel;

abstract class _PlanViewModelBase with Store, BaseViewModel {
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
