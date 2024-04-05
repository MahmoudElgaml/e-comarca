import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/end_points.dart';

abstract class APiManger{
final Dio dio;

APiManger(this.dio);

Future<Response> get(String endPoint){
  return dio.get(EndPoints.baseUrl+endPoint);
}

Future<Response> post (String endPoint,Map<String,dynamic> body ){
  return dio.post(EndPoints.baseUrl+endPoint,data:body );
}




}

