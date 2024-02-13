import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
                titleWidget(context),
                customSpacer(50),
                SizedBox(
                  width: context.width,
                  height: 350.w,
                  child: PageView.builder(
                    controller: viewmodel.pageController,
                    onPageChanged: (value) {
                      viewmodel.changePageIndex(value);
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      var bodyList = <Widget>[
                        pageViewBody1(context),
                        pageViewBody2(context),
                        pageViewBody3(context),
                      ];
                      return bodyList[index];
                    },
                  ),
                ),
                customSpacer(5),
                pageIndicators(viewmodel),
                customSpacer(30),
                nextPageButton(context, viewmodel)
              ],
            ),
          ),
        );
      },
    );
  }

  SizedBox nextPageButton(BuildContext context, PlanViewModel viewmodel) {
    return SizedBox(
      width: context.width,
      height: 40.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: context.colorScheme.onPrimary, elevation: 5.w),
        onPressed: () => viewmodel.changePage(),
        child: Observer(
          builder: (context) => Text(
            viewmodel.pageIndex == 2 ? "Tamamla" : "Devam et",
            style: context.textTheme.labelMedium,
          ),
        ),
      ),
    );
  }

  SizedBox pageIndicators(PlanViewModel viewmodel) {
    return SizedBox(
      height: 20.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Observer(
              builder: (context) => CircleAvatar(
                backgroundColor: context.colorScheme.onPrimary,
                radius: viewmodel.pageIndex == index ? 8.w : 4.w,
              ),
            ),
          );
        },
      ),
    );
  }

  Card pageViewBody1(BuildContext context) {
    return Card(
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
            dropdownBuilder(context),
            customSpacer(20),
            titlebuilder(context, "Davet Edilecekler:"),
            customSpacer(5),
            dropdownBuilder(context)
          ],
        ),
      ),
    );
  }

  Card pageViewBody2(BuildContext context) {
    return Card(
      elevation: 5.w,
      child: Padding(
        padding: context.padding2,
        child: Column(
          children: [
            customSpacer(10),
            titlebuilder(context, "Mekan:"),
            customSpacer(5),
            textfieldBuilder("Mekan adını girin."),
            customSpacer(20),
            titlebuilder(context, "Tarih seç:"),
            customSpacer(5),
            dropdownBuilder(context),
            customSpacer(20),
            titlebuilder(context, "Saat seç:"),
            customSpacer(5),
            dropdownBuilder(context)
          ],
        ),
      ),
    );
  }

  Card pageViewBody3(BuildContext context) {
    return Card(
      elevation: 5.w,
      child: Padding(
        padding: context.padding2,
        child: Column(
          children: [
            customSpacer(10),
            titlebuilder(context, "Fiyat:"),
            customSpacer(5),
            textfieldBuilder("Etkinlik fiyatını girin."),
            customSpacer(20),
            titlebuilder(context, "Kişi sayısı:"),
            customSpacer(5),
            dropdownBuilder(context),
          ],
        ),
      ),
    );
  }

  SizedBox titleWidget(BuildContext context) {
    return SizedBox(
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
    );
  }

  SizedBox dropdownBuilder(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 40.w,
      child: DropdownButtonFormField(
        hint: Text("Seçiniz..."),
        items: [],
        onChanged: (value) {},
      ),
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
