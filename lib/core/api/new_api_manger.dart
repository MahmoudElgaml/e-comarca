import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/models/response/UserModel.dart';
import 'package:e_comarce_clean/features/category_feature/data/models/SubCategoryModel.dart';
import 'package:e_comarce_clean/features/home/data/models/BrandModel.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../features/auth/data/models/request/SignUserModel.dart';
import '../../features/cart_feature/data/models/CartProductsModel.dart';
import '../../features/home/data/models/CategoryModel.dart';
import '../../features/products_feature/data/models/ProductModel.dart';
import '../../features/wishlist_feature/data/models/ProductModel.dart';
import 'end_points.dart';

part 'new_api_manger.g.dart';

@injectable
@RestApi(baseUrl: EndPoints.baseUrl)
abstract class NewApiManger {
  @factoryMethod
  factory NewApiManger(Dio dio) = _NewApiManger;

///////////////Home/////////////////////
  @GET(EndPoints.getAllCategory)
  Future<CategoryModel> getAllCategory();

  @GET(EndPoints.getAllBrand)
  Future<BrandModel> getAllBrand();
/////////////category/////////////////////
  @GET(EndPoints.getProductBaseOnCategory)
  Future<ProductModel> getProductBaseOnCategory(@Path() String categoryId);
  @GET(EndPoints.getProductBaseOnCategory)
  Future<SubCategoryModel> getProductBaseOnCategoryForCategory(@Path() String categoryId);

///////////////cart/////////////////////
  @GET(EndPoints.getCartProduct)
  Future<CartProductsModel> getCartProduct();

  @POST(EndPoints.addToCart)
  Future<void> addToCart(@Body() Map<String, dynamic> body);

  @DELETE(EndPoints.deleteFromCart)
  Future<void> deleteFromCart(@Path() String productId);
  ///////////wishlist/////////////////////
  @GET(EndPoints.getWishlistData)
  Future<WishlistProductModel> getWishlistData();
  @POST(EndPoints.addToWishList)
  Future<void> addToWishList(@Body() Map<String, dynamic> body);
  @DELETE(EndPoints.deleteFromWishList)
  Future<void> deleteFromWishList(@Path() String productId);
/////////////// auth/////////////////////
  @POST(EndPoints.logIn)
  Future<UserModel> signIn(@Body() Map<String, dynamic> body);
  @POST(EndPoints.signUp)
  Future<UserModel> signUp(@Body()SignUserModel signUserModel);
}
