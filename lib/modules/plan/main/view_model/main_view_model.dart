import 'package:flutter/material.dart';
import 'package:planla_app/modules/plan/main/model/plan_details_widget_model.dart';
import '../../../../core/base/model/base_view_model.dart';
import 'package:mobx/mobx.dart';
part 'main_view_model.g.dart';

class MainViewModel = _MainViewModelBase with _$MainViewModel;

abstract class _MainViewModelBase with Store, BaseViewModel {
  //fixme with service data
  PlanDetailWidgetModel planDetails = PlanDetailWidgetModel(
    date: "23/08/2024",
    time: "12:00",
    location: "Do Rock XL",
    price: "100 TL",
    owner: "Holy",
    memberSize: "5/6",
  );

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
