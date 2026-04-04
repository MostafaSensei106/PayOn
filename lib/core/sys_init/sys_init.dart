import 'package:flutter/material.dart';
import 'package:payon/core/di/di.dart' as di;

class SysInit {
  static Future<void> startDeamon() async {
    WidgetsFlutterBinding.ensureInitialized();

    // ErrorWidget.builder = (final FlutterErrorDetails details) =>
    //     Text(details.toString());

    await di.init();
  }
}
