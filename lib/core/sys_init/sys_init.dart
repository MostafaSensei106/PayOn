import 'package:flutter/material.dart';
import '../di/di.dart' as di;

class SysInit {
  static Future<void> startDeamon() async {
    WidgetsFlutterBinding.ensureInitialized();
    await di.init();
  }
}
