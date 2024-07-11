import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/api_manger.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/category_feature/data/data_sources/remote/category_remote_data_source.dart';
import 'package:e_comarce_clean/features/category_feature/data/models/Category2Model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/end_points.dart';
@injectable
class CategoryRemoteDataSourceImp implements CategoryRemoteDataSource{
  APiManger apiManger;

  CategoryRemoteDataSourceImp(this.apiManger);

  @override
  Future<Either<Failure, Category2Model>> getAllCategory()async {
    try {
      var response = await apiManger.get(EndPoints.getAllCategory);
      Category2Model categoryModel = Category2Model.fromJson(response.data);
      print(categoryModel.results);
      return right(categoryModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }

  }

}