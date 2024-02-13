import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../../../core/base/model/base_view_model.dart';
part 'plan_view_model.g.dart';

class PlanViewModel = _PlanViewModelBase with _$PlanViewModel;

abstract class _PlanViewModelBase with Store, BaseViewModel {
  PageController pageController = PageController();

  @observable
  bool isLoading = false;

  @observable
  int pageIndex = 0;

  @override
  void setContext(BuildContext context) => buildContext = context;
  @override
  void init() {}

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }

  @action
  void changePage() {
    pageIndex != 2
        ? pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          )
        : null;
  }

  @action
  void changePageIndex(int currentIndex) {
    pageIndex = currentIndex;
  }
}
