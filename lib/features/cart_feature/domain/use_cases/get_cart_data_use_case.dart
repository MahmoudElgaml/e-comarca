import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/entities/CartProduct.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/repositories/cart_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartDataUseCase{
  CartRepo cartRepo;

  GetCartDataUseCase(this.cartRepo);
  Future<Either<Failure,CartDataEntity>> getCartData()async{
    return await cartRepo.getCartProduct();

  }
}