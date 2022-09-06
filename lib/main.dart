import 'package:flutter/material.dart';

import 'app_widget.dart';
import 'core/di/injectable.dart' as di;

void main() async {
  await di.init();
  runApp(const AppWidget());
}
