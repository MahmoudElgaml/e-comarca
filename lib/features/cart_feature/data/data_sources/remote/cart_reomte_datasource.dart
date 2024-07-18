import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/features/cart_feature/data/models/CartProductsModel.dart';

import '../../../../../core/erorr/failure.dart';
import '../../../domain/entities/CartProduct.dart';

abstract class CartRemoteDatasource{

  Future<Either<Failure,CartProductsModel>> getCartProduct();

}