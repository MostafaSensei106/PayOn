import 'package:flutter/material.dart';
import 'core/sys_init/sys_init.dart';
import 'pay_on_app.dart';

void main() async {
  await SysInit.startDeamon();
  runApp(const PayOnApp());
}
