import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/api_manger.dart';
import 'package:e_comarce_clean/core/api/end_points.dart';
import 'package:e_comarce_clean/core/cache/storage_token.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/cart_feature/data/data_sources/remote/cart_reomte_datasource.dart';
import 'package:e_comarce_clean/features/cart_feature/data/models/CartProductsModel.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/entities/CartProduct.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRemoteDatasource)
class CartRemoteDatasourceImpl implements CartRemoteDatasource {
  APiManger aPiManger;
  StorageToken storageToken;

  CartRemoteDatasourceImpl(this.aPiManger, this.storageToken);

  @override
  Future<Either<Failure, CartProductsModel>> getCartProduct() async {
    try {
      String? token=await storageToken.getToken();
      print(token);
      var response = await aPiManger.get(EndPoints.getCartProduct,
          header: {
          'Content-Type': 'application/json',
           "token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2OGVmZGY4ZWQwZGMwMDE2Yzk4Yjk1YSIsIm5hbWUiOiJBaG1lZCBBYmQgQWwtTXV0aSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzIxMzM3MDQ5LCJleHAiOjE3MjkxMTMwNDl9.-8djNm5gXtbYIQVQxQvv61IhFbIxtAZtApdVK1CwEi4"
      });
      CartProductsModel cartProductsModel =
          CartProductsModel.fromJson(response.data);
      return right(cartProductsModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
