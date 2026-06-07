import 'package:flutter/material.dart';
import 'core/utils/sys_init/sys_init.dart';
import 'pay_on_app.dart';

void main() async {
  await SysInit.startDaemons();
  runApp(const PayOnApp());
}
