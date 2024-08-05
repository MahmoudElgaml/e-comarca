import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/entities/WishProductEntity.dart';

abstract  class WishlistRepo{
  Future<Either<Failure,WishProductEntity>> getWishlistData();
  Future<Either<Failure,String>> addToWishlist(String productId);
  Future<Either<Failure,String>> deleteFromWishlist(String productId);


}