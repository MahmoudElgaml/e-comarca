import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/api_manger.dart';
import 'package:e_comarce_clean/core/api/end_points.dart';
import 'package:e_comarce_clean/core/api/new_api_manger.dart';
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
  NewApiManger newApiManger;

  CartRemoteDatasourceImpl(
      this.aPiManger, this.storageToken, this.newApiManger);

  @override
  Future<Either<Failure, CartProductsModel>> getCartProduct() async {
    try {
      String? token = await storageToken.getToken();

      CartProductsModel cartProductsModel = await newApiManger.getCartProduct();
      return right(cartProductsModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, String>> addToCart(String productId) async {
    try {

      await newApiManger.addToCart({
        "productId": productId,
      });

      // String? token = await storageToken.getToken();
      // await aPiManger.post(EndPoints.addToCart, {
      //   "productId": productId,
      // }, header: {
      //   'Content-Type': 'application/json',
      //   "token": token,
      // });
      return right("done");
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, String>> deleteFromCart(String productId) async {
    try {
         await newApiManger.deleteFromCart(productId);
      // String? token = await storageToken.getToken();
      // await aPiManger.delete("${EndPoints.deleteFromCart}/$productId",
      //     header: {'Content-Type': 'application/json', "token": token});
      return right("done");
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, String>> updateProductQuantity(
      String productId, num count) async {
    try {
      String? token = await storageToken.getToken();
      await aPiManger.put(
        "${EndPoints.updateProductCountCart}/$productId",
        header: {'Content-Type': 'application/json', "token": token},
        body: {"count": count},
      );
      return right("success");
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
