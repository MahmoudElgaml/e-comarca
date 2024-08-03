import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/cart_feature/domain/repositories/cart_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateProductQuantityUseCase {
  CartRepo cartRepo;

  UpdateProductQuantityUseCase(this.cartRepo);

  Future<Either<Failure, String>> call(String productId, String count) {
    return cartRepo.updateProductQuantity(productId, count);
  }
}
