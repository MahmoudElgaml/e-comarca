import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../features/home/data/models/CategoryModel.dart';
import 'end_points.dart';
part 'new_api_manger.g.dart';
@injectable
@RestApi(baseUrl: EndPoints.baseUrl)
abstract class NewApiManger {
  @factoryMethod
  factory NewApiManger(Dio dio ) = _NewApiManger;


  @GET(EndPoints.getAllCategory)
  Future<CategoryModel> getAllCategory();


}