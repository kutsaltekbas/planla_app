import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../view_model/main_view_model.dart';

@RoutePage(name: 'MainRoute')
class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<MainViewModel>(
      viewModel: MainViewModel(),
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
