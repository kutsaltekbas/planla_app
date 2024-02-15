import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planla_app/core/extension/context_extension.dart';
import 'package:planla_app/core/init/lang/locale_keys.g.dart';

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
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: context.colorScheme.surface,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100.h),
              child: AppBar(
                elevation: 0,
                actions: [
                  Padding(
                    padding: context.paddingHorizontal2,
                    child: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          backgroundColor: context.colorScheme.onPrimary,
                          elevation: 5.w,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(50.w),
                          ),
                          context: context,
                          builder: (context) {
                            return Container(
                              width: context.width,
                              decoration: BoxDecoration(
                                color: context.colorScheme.onPrimary,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.w),
                                  topRight: Radius.circular(40.w),
                                ),
                              ),
                              child: Column(
                                children: [
                                  customSpacer(10),
                                  Divider(
                                    thickness: 3.5.w,
                                    color: context.colorScheme.surface,
                                    indent: 125.w,
                                    endIndent: 125.w,
                                  ),
                                  customSpacer(10),
                                  Text(
                                    "Hayko Konseri",
                                    style: context.textTheme.labelLarge,
                                  ),
                                  customSpacer(10),
                                  Icon(
                                    Icons.local_activity_outlined,
                                    size: 50.w,
                                    color: context.colorScheme.background,
                                  ),
                                  customSpacer(10),
                                  Divider(
                                    thickness: 1.w,
                                    color: context.colorScheme.surface,
                                    indent: 100.w,
                                    endIndent: 100.w,
                                  ),
                                  GridView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    itemCount:
                                        viewmodel.planDetails.dataList.length,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            childAspectRatio: 1.4,
                                            crossAxisCount: 3),
                                    itemBuilder: (context, index) {
                                      return SizedBox(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  viewmodel.planDetails
                                                      .iconList[index],
                                                  color: context
                                                      .colorScheme.background,
                                                ),
                                                customSpacer(10),
                                                Text(
                                                  viewmodel.planDetails
                                                      .titleList[index],
                                                  style: context
                                                      .textTheme.labelSmall!
                                                      .copyWith(
                                                          color: context
                                                              .colorScheme
                                                              .onSurface),
                                                )
                                              ],
                                            ),
                                            customSpacer(7),
                                            Text(
                                              viewmodel
                                                  .planDetails.dataList[index],
                                              style: context
                                                  .textTheme.labelSmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  customSpacer(10),
                                  Container(
                                    padding: context.paddingHorizontal3,
                                    width: context.width,
                                    height: 35.h,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Katıl"),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.person_add_outlined,
                        size: 32.w,
                        color: context.colorScheme.background,
                      ),
                    ),
                  )
                ],
                backgroundColor: context.colorScheme.onPrimary,
                title: Container(
                  margin: context.paddingHorizontal1,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    LocaleKeys.main_welcome.tr().replaceAll(
                          RegExp('@key'),
                          "TEST",
                        ),
                    style: context.textTheme.displaySmall,
                  ),
                ),
                bottom: TabBar(
                  padding: EdgeInsets.zero,
                  automaticIndicatorColorAdjustment: true,
                  labelStyle: context.textTheme.labelLarge,
                  indicatorColor: context.colorScheme.background,
                  tabs: [
                    tabBuilder(
                      context,
                      LocaleKeys.main_active_events.tr(),
                      Icons.event_note_rounded,
                    ),
                    tabBuilder(
                      context,
                      LocaleKeys.main_old_events.tr(),
                      Icons.collections_bookmark_outlined,
                    ),
                  ],
                ),
              ),
            ),
            body: const TabBarView(
              children: [
                Center(
                  child: Text("Tab TEST 1"),
                ),
                Center(
                  child: Text("Tab TEST 2"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  SizedBox customSpacer(int space) => SizedBox(height: space.h);

  Tab tabBuilder(BuildContext context, String tabText, IconData tabIcon) {
    return Tab(
      iconMargin: EdgeInsets.zero,
      icon: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            tabIcon,
            color: context.colorScheme.background,
          ),
          SizedBox(width: 5.w),
          Text(
            tabText,
            style: context.textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
