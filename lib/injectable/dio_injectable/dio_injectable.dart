import 'package:dio/dio.dart';
import 'package:github_search_app/data/interceptors/connection_check_interceptor.dart';
import 'package:github_search_app/injectable/injectable.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioModule {
  @singleton
  Dio dio(BaseOptions options) => Dio(options);
}

void registerInterceptors() {
  final dio = getIt<Dio>();
  dio.interceptors.addAll([
    ConnectionCheckInterceptor(),
    PrettyDioLogger(),
  ]);
}
