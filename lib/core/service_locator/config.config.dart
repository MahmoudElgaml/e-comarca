// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/account_feature/presentation/manager/account_cubit.dart'
    as _i764;
import '../../features/auth/data/data_sources/remote_data_source/remote_data_source.dart'
    as _i435;
import '../../features/auth/data/data_sources/remote_data_source/remote_datasource_impl.dart'
    as _i593;
import '../../features/auth/data/repositories/auth_repo_impl.dart' as _i662;
import '../../features/auth/domain/repositories/auth_rebo.dart' as _i751;
import '../../features/auth/domain/use_cases/log_in_usecase.dart' as _i25;
import '../../features/auth/domain/use_cases/sign_up_usecase.dart' as _i960;
import '../../features/auth/presentation/manager/auth_cubit.dart' as _i888;
import '../../features/cart_feature/data/data_sources/remote/cart_remote_datasource_impl.dart'
    as _i687;
import '../../features/cart_feature/data/data_sources/remote/cart_reomte_datasource.dart'
    as _i266;
import '../../features/cart_feature/data/repositories/cart_repo_impl.dart'
    as _i253;
import '../../features/cart_feature/domain/repositories/cart_repo.dart'
    as _i147;
import '../../features/cart_feature/domain/use_cases/add_to_cart_use_case.dart'
    as _i537;
import '../../features/cart_feature/domain/use_cases/delete_from_cart_use_cas.dart'
    as _i303;
import '../../features/cart_feature/domain/use_cases/get_cart_data_use_case.dart'
    as _i491;
import '../../features/cart_feature/domain/use_cases/update_product_quantity_use_case.dart'
    as _i548;
import '../../features/cart_feature/presentation/manager/get_cart_product_cubit.dart'
    as _i149;
import '../../features/category_feature/data/data_sources/remote/category_data_source_impl.dart'
    as _i558;
import '../../features/category_feature/data/data_sources/remote/category_remote_data_source.dart'
    as _i1034;
import '../../features/category_feature/data/repositories/category_repo_impl.dart'
    as _i449;
import '../../features/category_feature/domain/repositories/category_repo.dart'
    as _i709;
import '../../features/category_feature/domain/use_cases/get_category_usecase.dart'
    as _i491;
import '../../features/category_feature/domain/use_cases/get_subcategory_usecase.dart'
    as _i119;
import '../../features/category_feature/presentation/manager/category_cubit.dart'
    as _i786;
import '../../features/category_feature/presentation/manager/sub_category_cubit.dart'
    as _i484;
import '../../features/home/data/data_sources/remote/remote_data_source.dart'
    as _i813;
import '../../features/home/data/data_sources/remote/remote_data_source_impl.dart'
    as _i1001;
import '../../features/home/data/repositories/home_rebo_impl.dart' as _i327;
import '../../features/home/domain/repositories/home_repo.dart' as _i1021;
import '../../features/home/domain/use_cases/get_all_brand_use_case.dart'
    as _i756;
import '../../features/home/domain/use_cases/get_all_category.dart' as _i265;
import '../../features/home/presentation/manager/brand_home_cubit.dart'
    as _i148;
import '../../features/home/presentation/manager/category_home_cubit.dart'
    as _i235;
import '../../features/products_feature/data/data_sources/product_data_source.dart'
    as _i1025;
import '../../features/products_feature/data/data_sources/product_remote_datasource_impl.dart'
    as _i433;
import '../../features/products_feature/data/repositories/product_repo_impl.dart'
    as _i56;
import '../../features/products_feature/domain/repositories/product_repo.dart'
    as _i185;
import '../../features/products_feature/domain/use_cases/get_product_use_case.dart'
    as _i729;
import '../../features/products_feature/presentation/manager/get_product_cubit.dart'
    as _i947;
import '../../features/wishlist_feature/data/data_sources/wishlist_remote_data_source.dart'
    as _i818;
import '../../features/wishlist_feature/data/data_sources/wishlist_remote_data_source_impl.dart'
    as _i872;
import '../../features/wishlist_feature/data/repositories/wishlist_repo_impl.dart'
    as _i946;
import '../../features/wishlist_feature/domain/repositories/wishlist_repo.dart'
    as _i156;
import '../../features/wishlist_feature/domain/use_cases/add_to_wishlist_use_case.dart'
    as _i505;
import '../../features/wishlist_feature/domain/use_cases/delete_from_wishlist_use_case.dart'
    as _i1049;
import '../../features/wishlist_feature/domain/use_cases/get_wishlist_data_use_case.dart'
    as _i54;
import '../../features/wishlist_feature/presentation/manager/wishlist_cubit.dart'
    as _i644;
import '../api/api_manger.dart' as _i339;
import '../api/dio_factory.dart' as _i1008;
import '../api/new_api_manger.dart' as _i385;
import '../cache/storage_token.dart' as _i170;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioFactory = _$DioFactory();
    gh.factory<_i764.AccountCubit>(() => _i764.AccountCubit());
    gh.singleton<_i361.Dio>(() => dioFactory.getDio());
    gh.singleton<_i170.StorageToken>(() => _i170.StorageToken());
    gh.factory<_i385.NewApiManger>(() => _i385.NewApiManger(gh<_i361.Dio>()));
    gh.singleton<_i339.APiManger>(() => _i339.APiManger(gh<_i361.Dio>()));
    gh.factory<_i813.HomeRemoteDataSource>(
        () => _i1001.HomeRemoteDataSourceImpl(
              gh<_i339.APiManger>(),
              gh<_i385.NewApiManger>(),
            ));
    gh.factory<_i1021.HomeRepo>(
        () => _i327.HomeRepoImpl(gh<_i813.HomeRemoteDataSource>()));
    gh.factory<_i435.AuthRemoteDataSource>(() => _i593.AuthRemoteDataSourceImpl(
          gh<_i339.APiManger>(),
          gh<_i170.StorageToken>(),
        ));
    gh.factory<_i266.CartRemoteDatasource>(() => _i687.CartRemoteDatasourceImpl(
          gh<_i339.APiManger>(),
          gh<_i170.StorageToken>(),
        ));
    gh.factory<_i818.WishlistRemoteDataSource>(
        () => _i872.WishlistRemoteDataSourceImpl(
              gh<_i339.APiManger>(),
              gh<_i170.StorageToken>(),
            ));
    gh.factory<_i756.GetAllBrandUseCase>(
        () => _i756.GetAllBrandUseCase(gh<_i1021.HomeRepo>()));
    gh.factory<_i265.GetAllCategoryUseCase>(
        () => _i265.GetAllCategoryUseCase(gh<_i1021.HomeRepo>()));
    gh.factory<_i1025.ProductRemoteDatasource>(
        () => _i433.AllProductRemoteDatasourceImpl(gh<_i339.APiManger>()));
    gh.factory<_i185.ProductRepo>(
        () => _i56.AllProductRepoImpl(gh<_i1025.ProductRemoteDatasource>()));
    gh.factory<_i147.CartRepo>(
        () => _i253.CartRepoImpl(gh<_i266.CartRemoteDatasource>()));
    gh.factory<_i1034.CategoryRemoteDataSource>(
        () => _i558.CategoryRemoteDataSourceImp(gh<_i339.APiManger>()));
    gh.factory<_i729.GetAllProductUseCase>(
        () => _i729.GetAllProductUseCase(gh<_i185.ProductRepo>()));
    gh.factory<_i235.CategoryHomeCubit>(
        () => _i235.CategoryHomeCubit(gh<_i265.GetAllCategoryUseCase>()));
    gh.factory<_i537.AddToCartUseCase>(
        () => _i537.AddToCartUseCase(gh<_i147.CartRepo>()));
    gh.factory<_i303.DeleteFromCartUseCas>(
        () => _i303.DeleteFromCartUseCas(gh<_i147.CartRepo>()));
    gh.factory<_i491.GetCartDataUseCase>(
        () => _i491.GetCartDataUseCase(gh<_i147.CartRepo>()));
    gh.factory<_i548.UpdateProductQuantityUseCase>(
        () => _i548.UpdateProductQuantityUseCase(gh<_i147.CartRepo>()));
    gh.factory<_i751.AuthRepo>(
        () => _i662.AuthRepoImpl(gh<_i435.AuthRemoteDataSource>()));
    gh.factory<_i148.BrandHomeCubit>(
        () => _i148.BrandHomeCubit(gh<_i756.GetAllBrandUseCase>()));
    gh.factory<_i25.LogInUseCase>(
        () => _i25.LogInUseCase(gh<_i751.AuthRepo>()));
    gh.factory<_i960.SignUpUseCase>(
        () => _i960.SignUpUseCase(gh<_i751.AuthRepo>()));
    gh.factory<_i149.GetCartProductCubit>(() => _i149.GetCartProductCubit(
          gh<_i491.GetCartDataUseCase>(),
          gh<_i537.AddToCartUseCase>(),
          gh<_i303.DeleteFromCartUseCas>(),
          gh<_i548.UpdateProductQuantityUseCase>(),
        ));
    gh.factory<_i156.WishlistRepo>(
        () => _i946.WishlistRepoImpl(gh<_i818.WishlistRemoteDataSource>()));
    gh.singleton<_i888.AuthCubit>(() => _i888.AuthCubit(
          gh<_i960.SignUpUseCase>(),
          gh<_i25.LogInUseCase>(),
        ));
    gh.factory<_i709.CategoryRepo>(
        () => _i449.CategoryRepoImpl(gh<_i1034.CategoryRemoteDataSource>()));
    gh.factory<_i947.GetProductCubit>(
        () => _i947.GetProductCubit(gh<_i729.GetAllProductUseCase>()));
    gh.factory<_i491.GetCategoryUseCase>(
        () => _i491.GetCategoryUseCase(gh<_i709.CategoryRepo>()));
    gh.factory<_i119.GetSubcategoryUseCase>(
        () => _i119.GetSubcategoryUseCase(gh<_i709.CategoryRepo>()));
    gh.factory<_i786.CategoryCubit>(
        () => _i786.CategoryCubit(gh<_i491.GetCategoryUseCase>()));
    gh.factory<_i505.AddToWishlistUseCase>(
        () => _i505.AddToWishlistUseCase(gh<_i156.WishlistRepo>()));
    gh.factory<_i1049.DeleteFromWishlistUseCase>(
        () => _i1049.DeleteFromWishlistUseCase(gh<_i156.WishlistRepo>()));
    gh.factory<_i54.GetWishlistDataUseCase>(
        () => _i54.GetWishlistDataUseCase(gh<_i156.WishlistRepo>()));
    gh.factory<_i484.SubCategoryCubit>(
        () => _i484.SubCategoryCubit(gh<_i119.GetSubcategoryUseCase>()));
    gh.factory<_i644.WishlistCubit>(() => _i644.WishlistCubit(
          gh<_i54.GetWishlistDataUseCase>(),
          gh<_i505.AddToWishlistUseCase>(),
          gh<_i1049.DeleteFromWishlistUseCase>(),
        ));
    return this;
  }
}

class _$DioFactory extends _i1008.DioFactory {}
