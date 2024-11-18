import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/api_manger.dart';
import 'package:e_comarce_clean/core/api/end_points.dart';
import 'package:e_comarce_clean/core/cache/storage_token.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/wishlist_feature/data/data_sources/wishlist_remote_data_source.dart';
import 'package:e_comarce_clean/features/wishlist_feature/data/models/ProductModel.dart';
import 'package:e_comarce_clean/features/wishlist_feature/domain/entities/WishProductEntity.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/new_api_manger.dart';

@Injectable(as: WishlistRemoteDataSource)
class WishlistRemoteDataSourceImpl implements WishlistRemoteDataSource {
  APiManger aPiManger;
  StorageToken storageToken;
  NewApiManger newApiManger;

  WishlistRemoteDataSourceImpl(
      this.aPiManger, this.storageToken, this.newApiManger);

  @override
  Future<Either<Failure, WishlistProductModel>> getWishlistData() async {
    try {
      var productModel = await newApiManger.getWishlistData();
      // var response = await aPiManger
      //     .get(EndPoints.getWishlistData, header: {"token": token});
      // WishlistProductModel productModel =
      //     WishlistProductModel.fromJson(response.data);
      return right(productModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, String>> addToWishlist(String productId) async {
    String? token = await storageToken.getToken();
    try {
      await newApiManger.addToWishList(
        {
          "productId": productId,
        },
      );
      // var response = await aPiManger.post(
      //     EndPoints.addToWishList, {"productId": productId},
      //     header: {"token": token});

      return right("success");
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, String>> deleteFromWishlist(String productId) async {

    try {
      await newApiManger.deleteFromWishList(productId);
      // var response = await aPiManger.delete(
      //     "${EndPoints.deleteFromWishList}/$productId",
      //     header: {"token": token});
      //
      return right("success");
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
