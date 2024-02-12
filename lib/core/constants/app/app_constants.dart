// ignore_for_file: constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApplicationConstants {
  static const TEST_MODE = true;
  static const LANG_ASSET_PATH = 'assets/languages';
  static const EMAIL_REGIEX = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}\$';
  static const LANGUAGE = 'language';
}

class EnvConstants {
  static final aApiKey = dotenv.env['A_API_KEY'];
  static final aAppId = dotenv.env['A_APP_ID'];
  static final aMessagingSenderId = dotenv.env['A_SENDER_ID'];
  static final aProjectId = dotenv.env['A_PROJECT_ID'];
  static final aStorageBucket = dotenv.env['A_STORAGE_BUCKET'];
  static final iosApiKey = dotenv.env['IOS_API_KEY'];
  static final iosAppId = dotenv.env['IOS_APP_ID'];
  static final iosMessagingSenderId = dotenv.env['IOS_SENDER_ID'];
  static final iosProjectId = dotenv.env['IOS_PROJECT_ID'];
  static final iosStorageBucket = dotenv.env['IOS_STORAGE_BUCKET'];
  static final iosBundleId = dotenv.env['IOS_BUNDLE_ID'];
}
