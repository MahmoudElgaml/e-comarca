import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/end_points.dart';
import 'package:e_comarce_clean/core/cache/storage_token.dart';
import 'package:injectable/injectable.dart';
@singleton
@injectable
class APiManger {
  final Dio dio=Dio();

  APiManger();

  Future<Response> get(String endPoint) {
    return dio.get(EndPoints.baseUrl + endPoint);
  }

  Future<Response> post(String endPoint, Map<String, dynamic> body) {
    return dio.post(EndPoints.baseUrl + endPoint, data: body);
  }
}
