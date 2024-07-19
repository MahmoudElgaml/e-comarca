import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/repositories/cart_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/erorr/failure.dart';

@injectable
class AddToCartUseCase{
  CartRepo cartRepo;

  AddToCartUseCase(this.cartRepo);

  Future<Either<Failure,String>>call(String productId) async{
    return await cartRepo.addToCart(productId);

  }
}