import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/wishlist_feature/data/data_sources/wishlist_remote_data_source.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/entities/WishProductEntity.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/repositories/wishlist_repo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: WishlistRepo)
class WishlistRepoImpl implements WishlistRepo{
  WishlistRemoteDataSource wishlistRemoteDataSource;

  WishlistRepoImpl(this.wishlistRemoteDataSource);

  @override
  Future<Either<Failure, WishProductEntity>> getWishlistData() async{
    return await wishlistRemoteDataSource.getWishlistData();

  }

  @override
  Future<Either<Failure, String>> addToWishlist(String productId) async{
    return await wishlistRemoteDataSource.addToWishlist(productId);

  }

  @override
  Future<Either<Failure, String>> deleteFromWishlist(String productId)async {
   return await wishlistRemoteDataSource.deleteFromWishlist(productId);
  }

}