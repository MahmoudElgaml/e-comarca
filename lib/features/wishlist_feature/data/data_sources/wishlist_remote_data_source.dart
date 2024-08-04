

import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/features/wishlist_feature/data/models/ProductModel.dart';

import '../../../../core/erorr/failure.dart';
import '../../domain/entities/WishProductEntity.dart';

abstract class WishlistRemoteDataSource{
  Future<Either<Failure,WishlistProductModel>> getWishlistData();
  Future<Either<Failure,String>> addToWishlist(String productId);

}