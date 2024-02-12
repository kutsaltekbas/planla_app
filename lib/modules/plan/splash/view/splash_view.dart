import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:planla_app/core/extension/context_extension.dart';
import '../../../../core/base/view/base_view.dart';
import '../../../../core/constants/image/image_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../viewmodel/splash_view_model.dart';

@RoutePage<String>(name: 'SplashRoute')
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      viewModel: SplashViewModel(),
      onModelReady: (viewmodel) {
        viewmodel.setContext(context);
        viewmodel.init();
      },
      onPageBuilder: (context, viewmodel) {
        return Scaffold(
          backgroundColor: context.colorScheme.background,
          body: Observer(builder: (_) {
            return AnimatedSlide(
              offset: viewmodel.isStarted ? Offset.zero : const Offset(0, -1),
              duration: const Duration(milliseconds: 700),
              curve: Curves.ease,
              child: Center(
                child: SizedBox(
                  height: context.height,
                  width: 200.w,
                  child: Image.asset(
                    ImageConstants.instance.splashLogo,
                    scale: 0.8,
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
