import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/entities/CartProduct.dart';

abstract class CartRepo{
  Future<Either<Failure,CartDataEntity>> getCartProduct();


}