import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/repositories/wishlist_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/erorr/failure.dart';

@injectable
class DeleteFromWishlistUseCase{
  WishlistRepo  wishlistRepo;

  DeleteFromWishlistUseCase(this.wishlistRepo);

  Future<Either<Failure,String>>call(String productId)async{
    return await wishlistRepo.deleteFromWishlist(productId);


  }
}