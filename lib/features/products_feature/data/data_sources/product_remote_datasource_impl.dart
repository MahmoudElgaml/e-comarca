import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/features/products_feature/data/data_sources/product_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/api_manger.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/erorr/failure.dart';
import '../models/ProductModel.dart';

@Injectable(as: ProductRemoteDatasource)
class AllProductRemoteDatasourceImpl implements ProductRemoteDatasource {
  APiManger aPiManger;

  AllProductRemoteDatasourceImpl(this.aPiManger);

  @override
  Future<Either<Failure, ProductModel>> getAllProduct(String categoryId) async {
    try {
      var response =
          await aPiManger.get(EndPoints.getProductBaseOnCategory + categoryId);
      ProductModel productModel = ProductModel.fromJson(response.data);

      return right(productModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
