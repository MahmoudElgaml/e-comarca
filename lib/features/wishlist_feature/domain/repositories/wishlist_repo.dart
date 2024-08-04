import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/entities/WishProductEntity.dart';

abstract  class WishlistRepo{
  Future<Either<Failure,WishProductEntity>> getWishlistData();


}