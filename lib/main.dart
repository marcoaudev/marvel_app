import 'package:flutter/material.dart';
import 'package:marvel_app/app/app.dart';
import 'package:marvel_app/app/core/shared/injector/app_injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ApplicationInjector.setup();
  runApp(const MyApp());
}
