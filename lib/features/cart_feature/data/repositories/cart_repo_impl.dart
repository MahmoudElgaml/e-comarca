import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/cart_feature/data/data_sources/remote/cart_reomte_datasource.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/entities/CartProduct.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/repositories/cart_repo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:  CartRepo)
class CartRepoImpl implements CartRepo{
  CartRemoteDatasource cartRemoteDatasource;


  CartRepoImpl(this.cartRemoteDatasource);

  @override
  Future<Either<Failure, CartDataEntity>> getCartProduct()async {
    return await cartRemoteDatasource.getCartProduct();
  }

  @override
  Future<Either<Failure, String>> addToCart(String productId) async{
    return await cartRemoteDatasource.addToCart(productId);

  }

  @override
  Future<Either<Failure, String>> deleteFromCart(String productId) async{
     return await cartRemoteDatasource.deleteFromCart(productId);
  }

  @override
  Future<Either<Failure, String>> updateProductQuantity(String productId, num count) async{
   return await cartRemoteDatasource.updateProductQuantity(productId, count);
  }


}