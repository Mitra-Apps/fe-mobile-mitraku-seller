import 'dart:async';
import 'dart:math';
import 'package:mitraku_seller/core/bloc_core/bloc_observer.dart';
import 'package:mitraku_seller/features/app/view/app.dart';
import 'package:mitraku_seller/injector/injector.dart';
import 'package:mitraku_seller/services/crashlytics_service/crashlytics_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

Future<void> bootstrap({
  AsyncCallback? firebaseInitialization,
  AsyncCallback? flavorConfiguration,
}) async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await firebaseInitialization?.call();
    Logger.level = Level.verbose;
    await flavorConfiguration?.call();

    Injector.init();

    await Injector.instance.allReady();

    Bloc.observer = AppBlocObserver();

    runApp(const App());
  }, (error, stack) {
    debugPrint(error.toString());
    Injector.instance<CrashlyticsService>().recordException(error, stack);
  });
}
