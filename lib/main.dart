import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pomidoro_timer/src/core/navigation/app_module.dart';
import 'package:flutter_pomidoro_timer/src/internal/app.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const App()));
}
