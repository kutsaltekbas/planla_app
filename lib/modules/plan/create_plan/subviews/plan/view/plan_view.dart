import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planla_app/core/extension/context_extension.dart';

import '../../../../../../core/base/view/base_view.dart';
import '../view_model/plan_view_model.dart';

@RoutePage(name: 'PlanRoute')
class PlanView extends StatelessWidget {
  const PlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<PlanViewModel>(
      viewModel: PlanViewModel(),
      onModelReady: (viewmodel) {
        viewmodel.setContext(context);
        viewmodel.init();
      },
      onPageBuilder: (context, viewmodel) {
        return Scaffold(
          backgroundColor: context.colorScheme.background,
          body: Container(
            padding: context.padding3,
            width: context.width,
            height: context.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: context.width,
                  height: 50.w,
                  child: Card(
                    elevation: 5.w,
                    child: Center(
                      child: Text(
                        "Planını Oluştur!",
                        style: context.textTheme.labelLarge,
                      ),
                    ),
                  ),
                ),
                customSpacer(50),
                SizedBox(
                  width: context.width,
                  height: 350.w,
                  child: Card(
                    elevation: 5.w,
                    child: Padding(
                      padding: context.padding2,
                      child: Column(
                        children: [
                          customSpacer(10),
                          titlebuilder(context, "Başlık:"),
                          customSpacer(5),
                          textfieldBuilder("Plan başlığı girin."),
                          customSpacer(20),
                          titlebuilder(context, "Kategori:"),
                          customSpacer(5),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  TextField textfieldBuilder(String hintText) => TextField(
        decoration: InputDecoration(hintText: hintText),
      );

  Widget titlebuilder(BuildContext context, String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: context.textTheme.labelMedium,
      ),
    );
  }

  SizedBox customSpacer(int space) => SizedBox(height: space.h);
}
