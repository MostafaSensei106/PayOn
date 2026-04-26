import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../di/di.dart' as di;
import '../bloc_observer.dart';

final class SysInit {
  static Future<void> startDeamon() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = const AppBlocObserver();
    await di.init();
  }
}
