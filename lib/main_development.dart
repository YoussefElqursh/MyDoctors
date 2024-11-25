import 'package:doctorna/core/di/dependancy_injection.dart';
import 'package:doctorna/core/routing/app_rourer.dart';
import 'package:doctorna/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}

/* To build or rebuild the auto generated files use this commend : dart run build_runner build --delete-conflicting-outputs */

/* To build  release app use this commend : flutter run --release -t lib/main_production.dart --flavor production */
/* To build  release app use this commend : flutter run --debug -t lib/main_production.dart --flavor production */
/* To build  release app use this commend : flutter run --release -t lib/main_development.dart --flavor development */
/* To build  release app use this commend : flutter run --debug -t lib/main_development.dart --flavor development */