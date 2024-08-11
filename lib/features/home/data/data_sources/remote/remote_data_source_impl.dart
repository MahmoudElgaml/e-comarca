import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/api_manger.dart';
import 'package:e_comarce_clean/core/api/end_points.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/home/data/data_sources/remote/remote_data_source.dart';
import 'package:e_comarce_clean/features/home/data/models/BrandModel.dart';
import 'package:e_comarce_clean/features/home/data/models/CategoryModel.dart';
import 'package:e_comarce_clean/features/home/domain/entities/category_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  APiManger apiManger;

  HomeRemoteDataSourceImpl(this.apiManger);

  @override
  Future<Either<Failure, CategoryModel>> getAllCategory() async {
    try {
      var response = await apiManger.get(EndPoints.getAllCategory);
      CategoryModel categoryModel = CategoryModel.fromJson(response.data);

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
  Future<Either<Failure, BrandModel>> getAllBrand() async {
    try {
      var response = await apiManger.get(EndPoints.getAllBrand);
      BrandModel brandModel = BrandModel.fromJson(response.data);

      return right(brandModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
