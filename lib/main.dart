import 'package:doctorna/core/di/dependancy_injection.dart';
import 'package:doctorna/core/routing/app_rourer.dart';
import 'package:doctorna/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}

/* To build or rebuild the auto generated files use this commend : dart run build_runner build --delete-conflicting-outputs */