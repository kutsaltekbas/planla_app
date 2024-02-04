import 'package:flutter/material.dart';

import '../../init/cache/locale_manager.dart';

abstract mixin class BaseViewModel {
  BuildContext? buildContext;

  LocaleManager localeManager = LocaleManager.instance;
  void setContext(BuildContext context);

  void init();
}
