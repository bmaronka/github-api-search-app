import 'package:get_it/get_it.dart';
import 'package:github_search_app/injectable/dio_injectable/dio_injectable.dart';
import 'package:github_search_app/injectable/injectable.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  getIt.init();
  registerInterceptors();
}
