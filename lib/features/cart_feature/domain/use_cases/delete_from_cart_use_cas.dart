import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/repositories/cart_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class DeleteFromCartUseCas{
  CartRepo cartRepo;

  DeleteFromCartUseCas(this.cartRepo);
  Future<Either<Failure,String>>call(String productId){
    return cartRepo.deleteFromCart(productId);

  }
}