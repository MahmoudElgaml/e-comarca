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
      var response = await aPiManger.get(EndPoints.getCartProduct,
          header: {"token": storageToken.getToken()});
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
