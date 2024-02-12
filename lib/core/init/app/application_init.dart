import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

@immutable
class ApplicationInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
  }
}
