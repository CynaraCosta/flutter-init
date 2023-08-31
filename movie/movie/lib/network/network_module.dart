import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkModule {
  @Named('BaseUrl')
  String get baseUrl => 'https://api.themoviedb.org/3/';

  @Named('PrettyLogger')
  Interceptor providePrettyLogger() =>
      PrettyDioLogger(responseBody: true, request: true);

  @singleton
  Dio provideDio(
    @Named('BaseUrl') String baseUrl,
    @Named('PrettyLogger') Interceptor prettyLogger) =>
    Dio(
      BaseOptions(baseUrl: baseUrl)
    )..interceptors.add(prettyLogger);
}
