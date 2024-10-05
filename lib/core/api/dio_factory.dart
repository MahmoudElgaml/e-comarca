import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioFactory {
  // Method to provide Dio instance as a singleton
  @singleton
  Dio getDio() {
    const Duration timeOut = Duration(seconds: 30);

    final Dio dio = Dio()
      ..options.connectTimeout = timeOut
      ..options.receiveTimeout = timeOut;

    _addDioInterceptors(dio);

    return dio;
  }

  void _addDioInterceptors(Dio dio) {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
    ));
  }
}
