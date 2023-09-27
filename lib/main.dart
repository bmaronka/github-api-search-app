import 'package:fimber_io/fimber_io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search_app/injectable/injectable.dart';
import 'package:github_search_app/mobile_app.dart';
import 'package:github_search_app/presentation/routing/router.dart';
import 'package:github_search_app/utils/logging_bloc_observer.dart';

Future<void> main() => run();

Future<void> run() async {
  await initializeApp();

  runApp(App(MainRouter()));
}

@visibleForTesting
Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  Fimber.plantTree(DebugTree());

  configureDependencies();

  Bloc.observer = LoggingBlocObserver();
}
