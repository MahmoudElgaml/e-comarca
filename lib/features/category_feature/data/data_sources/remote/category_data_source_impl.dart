import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/api_manger.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/category_feature/data/data_sources/remote/category_remote_data_source.dart';
import 'package:e_comarce_clean/features/category_feature/data/models/Category2Model.dart';
import 'package:e_comarce_clean/features/category_feature/data/models/SubCategoryModel.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api/end_points.dart';
import '../../../../../core/api/new_api_manger.dart';

@Injectable(as: CategoryRemoteDataSource)
class CategoryRemoteDataSourceImp implements CategoryRemoteDataSource {
  APiManger apiManger;
  NewApiManger newApiManger;

  CategoryRemoteDataSourceImp(this.apiManger,this.newApiManger);

  @override
  Future<Either<Failure, Category2Model>> getAllCategory() async {
    try {
      var response = await apiManger.get(EndPoints.getAllCategory);
      Category2Model categoryModel = Category2Model.fromJson(response.data);

      return right(categoryModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, SubCategoryModel>> getSubCategory(
      String categoryId) async {
    try {
      // var response = await apiManger.get("${EndPoints.getProductBaseOnCategory}$categoryId");
      // SubCategoryModel subCategoryModel =
      //     SubCategoryModel.fromJson(response.data);
      SubCategoryModel subCategoryModel = await newApiManger.getProductBaseOnCategoryForCategory(categoryId);
      return right(subCategoryModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
