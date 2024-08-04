import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/repositories/wishlist_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/erorr/failure.dart';
import '../entities/WishProductEntity.dart';

@injectable
class GetWishlistDataUseCase {
  WishlistRepo wishlistRepo;

  GetWishlistDataUseCase(this.wishlistRepo);

  Future<Either<Failure, WishProductEntity>> call() async {
    return await wishlistRepo.getWishlistData();
  }
}
