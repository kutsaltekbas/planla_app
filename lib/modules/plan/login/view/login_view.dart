import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planla_app/core/constants/image/image_constants.dart';
import 'package:planla_app/core/extension/context_extension.dart';
import 'package:planla_app/core/init/lang/locale_keys.g.dart';
import '../../../../core/base/view/base_view.dart';
import '../viewmodel/login_view_model.dart';

@RoutePage(name: 'LoginRoute')
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onModelReady: (viewmodel) {
        viewmodel.setContext(context);
        viewmodel.init();
      },
      onPageBuilder: (context, viewmodel) {
        return Scaffold(
          backgroundColor: context.colorScheme.onPrimary,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstants.instance.splashLogo,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  LocaleKeys.login_app_title.tr(),
                  style: context.textTheme.displayLarge,
                ),
              ),
              customSpacer(10),
              Container(
                alignment: Alignment.center,
                child: Text(
                  LocaleKeys.login_description.tr(),
                  style: context.textTheme.bodyLarge,
                ),
              ),
              customSpacer(30),
              textfieldBuilder(
                context,
                Icons.mail_outline_rounded,
                LocaleKeys.login_email.tr(),
              ),
              customSpacer(30),
              textfieldBuilder(
                context,
                Icons.lock_open,
                LocaleKeys.login_password.tr(),
              ),
              customSpacer(50),
              Container(
                margin: context.paddingHorizontal3,
                width: context.width,
                height: 40.w,
                child: ElevatedButton(
                  onPressed: () => viewmodel.login(),
                  child: Text(
                    LocaleKeys.login_login.tr(),
                    style: context.textTheme.bodyMedium,
                  ),
                ),
              ),
              customSpacer(10),
              Text(
                LocaleKeys.login_forgot_password.tr(),
                style: context.textTheme.bodyLarge!
                    .copyWith(color: context.colorScheme.background),
              ),
            ],
          ),
        );
      },
    );
  }

  Padding textfieldBuilder(
      BuildContext context, IconData icon, String fieldTitle) {
    return Padding(
      padding: context.paddingHorizontal3,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              fieldTitle,
              style: context.textTheme.labelMedium!
                  .copyWith(color: context.colorScheme.background),
            ),
          ),
          TextField(
            cursorColor: context.colorScheme.background,
            decoration: InputDecoration(
                suffixIcon: Icon(icon), contentPadding: context.padding2),
          ),
        ],
      ),
    );
  }

  SizedBox customSpacer(int space) => SizedBox(height: space.h);
}
