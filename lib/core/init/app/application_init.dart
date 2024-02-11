import 'package:flutter/material.dart';

@immutable
class ApplicationInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
  }
}
