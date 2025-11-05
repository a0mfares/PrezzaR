import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prezza/bloc_observer.dart';
import 'package:prezza/core/service/hive_storage.dart';
import 'package:prezza/prezza_page.dart';
import 'core/service/service_locator.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await HiveStorage.init();
  ServiceLocator().initializeServiceLocator();
  Bloc.observer = BlocPrezzaOberser();
  HiveStorage.get(kOnBoard, defaultValue: false);

  HiveStorage.get(kLocale, defaultValue: 'en');

  runApp(const PrezzaPage());

  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}
