import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planla_app/core/extension/context_extension.dart';
import 'package:planla_app/core/init/lang/locale_keys.g.dart';

import '../../../../core/base/view/base_view.dart';
import '../view_model/profile_view_model.dart';

@RoutePage(name: 'ProfileRoute')
class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
      viewModel: ProfileViewModel(),
      onModelReady: (viewmodel) {
        viewmodel.setContext(context);
        viewmodel.init();
      },
      onPageBuilder: (context, viewmodel) {
        return Scaffold(
          backgroundColor: context.colorScheme.onPrimary,
          body: Padding(
            padding: context.padding3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    LocaleKeys.profile_title.tr(),
                    style: context.textTheme.labelLarge,
                  ),
                ),
                customSpacer(20),
                CircleAvatar(
                  radius: 40.w,
                  backgroundColor: context.colorScheme.background,
                  child: Icon(
                    Icons.person,
                    size: 32.w,
                    color: context.colorScheme.onPrimary,
                  ),
                ),
                customSpacer(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "TEST USER",
                      style: context.textTheme.labelLarge,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit_square,
                        color: context.colorScheme.background,
                        size: 32.w,
                      ),
                    ),
                  ],
                ),
                customSpacer(10),
                Divider(
                  thickness: 1.w,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  SizedBox customSpacer(int space) => SizedBox(height: space.h);
}
