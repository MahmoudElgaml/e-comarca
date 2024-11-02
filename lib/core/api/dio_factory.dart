import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../cache/storage_token.dart';
import '../service_locator/config.dart';
@singleton
@module
abstract class DioFactory {
  // Method to provide Dio instance as a singleton
  static Dio? dio;

  @singleton
  Dio getDio(StorageToken storageToken) {
    const Duration timeOut = Duration(seconds: 30);

      dio = Dio()
      ..options.connectTimeout = timeOut
      ..options.receiveTimeout = timeOut;
    _addDioHeader(dio!,storageToken);
    _addDioInterceptors(dio!);


    return dio!;
  }

  void _addDioInterceptors(Dio dio) {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
    ));
  }
  static addTokenAfterLogin(String token) {
    dio?.options.headers = {
      "token":token,
    };
  }
Future<void> _addDioHeader(Dio dio,StorageToken storageToken)async {
    dio.options.headers= {
      'Content-Type': 'application/json',
      "token":"${await storageToken.getToken()}",
    };
  }

}
