// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/account_feature/presentation/manager/account_cubit.dart'
    as _i3;
import '../../features/auth/data/data_sources/remote_data_source/remote_data_source.dart'
    as _i6;
import '../../features/auth/data/data_sources/remote_data_source/remote_datasource_impl.dart'
    as _i7;
import '../../features/auth/data/repositories/auth_repo_impl.dart' as _i23;
import '../../features/auth/domain/repositories/auth_rebo.dart' as _i22;
import '../../features/auth/domain/use_cases/log_in_usecase.dart' as _i25;
import '../../features/auth/domain/use_cases/sign_up_usecase.dart' as _i26;
import '../../features/auth/presentation/manager/auth_cubit.dart' as _i27;
import '../../features/cart_feature/data/data_sources/remote/cart_remote_datasource_impl.dart'
    as _i9;
import '../../features/cart_feature/data/data_sources/remote/cart_reomte_datasource.dart'
    as _i8;
import '../../features/cart_feature/data/repositories/cart_repo_impl.dart'
    as _i15;
import '../../features/cart_feature/domain/repositories/cart_repo.dart' as _i14;
import '../../features/cart_feature/domain/use_cases/get_cart_data_use_case.dart'
    as _i21;
import '../../features/cart_feature/presentation/manager/get_cart_product_cubit.dart'
    as _i24;
import '../../features/category_feature/data/data_sources/remote/category_data_source_impl.dart'
    as _i17;
import '../../features/category_feature/data/data_sources/remote/category_remote_data_source.dart'
    as _i16;
import '../../features/category_feature/data/repositories/category_repo_impl.dart'
    as _i29;
import '../../features/category_feature/domain/repositories/category_repo.dart'
    as _i28;
import '../../features/category_feature/domain/use_cases/get_category_usecase.dart'
    as _i33;
import '../../features/category_feature/domain/use_cases/get_subcategory_usecase.dart'
    as _i34;
import '../../features/category_feature/presentation/manager/category_cubit.dart'
    as _i35;
import '../../features/category_feature/presentation/manager/sub_category_cubit.dart'
    as _i38;
import '../../features/home/data/data_sources/remote/remote_data_source.dart'
    as _i19;
import '../../features/home/data/data_sources/remote/remote_data_source_impl.dart'
    as _i20;
import '../../features/home/data/repositories/home_rebo_impl.dart' as _i31;
import '../../features/home/domain/repositories/home_repo.dart' as _i30;
import '../../features/home/domain/use_cases/get_all_category.dart' as _i36;
import '../../features/home/presentation/manager/home_cubit.dart' as _i37;
import '../../features/products_feature/data/data_sources/product_data_source.dart'
    as _i10;
import '../../features/products_feature/data/data_sources/product_remote_datasource_impl.dart'
    as _i11;
import '../../features/products_feature/data/repositories/product_repo_impl.dart'
    as _i13;
import '../../features/products_feature/domain/repositories/product_repo.dart'
    as _i12;
import '../../features/products_feature/domain/use_cases/get_product_use_case.dart'
    as _i18;
import '../../features/products_feature/presentation/manager/get_product_cubit.dart'
    as _i32;
import '../api/api_manger.dart' as _i4;
import '../cache/storage_token.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AccountCubit>(() => _i3.AccountCubit());
    gh.singleton<_i4.APiManger>(() => _i4.APiManger());
    gh.singleton<_i5.StorageToken>(() => _i5.StorageToken());
    gh.factory<_i6.AuthRemoteDataSource>(() => _i7.AuthRemoteDataSourceImpl(
          gh<_i4.APiManger>(),
          gh<_i5.StorageToken>(),
        ));
    gh.factory<_i8.CartRemoteDatasource>(() => _i9.CartRemoteDatasourceImpl(
          gh<_i4.APiManger>(),
          gh<_i5.StorageToken>(),
        ));
    gh.factory<_i10.ProductRemoteDatasource>(
        () => _i11.AllProductRemoteDatasourceImpl(gh<_i4.APiManger>()));
    gh.factory<_i12.ProductRepo>(
        () => _i13.AllProductRepoImpl(gh<_i10.ProductRemoteDatasource>()));
    gh.factory<_i14.CartRepo>(
        () => _i15.CartRepoImpl(gh<_i8.CartRemoteDatasource>()));
    gh.factory<_i16.CategoryRemoteDataSource>(
        () => _i17.CategoryRemoteDataSourceImp(gh<_i4.APiManger>()));
    gh.factory<_i18.GetAllProductUseCase>(
        () => _i18.GetAllProductUseCase(gh<_i12.ProductRepo>()));
    gh.factory<_i19.HomeRemoteDataSource>(
        () => _i20.HomeRemoteDataSourceImpl(gh<_i4.APiManger>()));
    gh.factory<_i21.GetCartDataUseCase>(
        () => _i21.GetCartDataUseCase(gh<_i14.CartRepo>()));
    gh.factory<_i22.AuthRepo>(
        () => _i23.AuthRepoImpl(gh<_i6.AuthRemoteDataSource>()));
    gh.factory<_i24.GetCartProductCubit>(
        () => _i24.GetCartProductCubit(gh<_i21.GetCartDataUseCase>()));
    gh.factory<_i25.LogInUseCase>(() => _i25.LogInUseCase(gh<_i22.AuthRepo>()));
    gh.factory<_i26.SignUpUseCase>(
        () => _i26.SignUpUseCase(gh<_i22.AuthRepo>()));
    gh.singleton<_i27.AuthCubit>(() => _i27.AuthCubit(
          gh<_i26.SignUpUseCase>(),
          gh<_i25.LogInUseCase>(),
        ));
    gh.factory<_i28.CategoryRepo>(
        () => _i29.CategoryRepoImpl(gh<_i16.CategoryRemoteDataSource>()));
    gh.factory<_i30.HomeRepo>(
        () => _i31.HomeReboImpl(gh<_i19.HomeRemoteDataSource>()));
    gh.factory<_i32.GetProductCubit>(
        () => _i32.GetProductCubit(gh<_i18.GetAllProductUseCase>()));
    gh.factory<_i33.GetCategoryUseCase>(
        () => _i33.GetCategoryUseCase(gh<_i28.CategoryRepo>()));
    gh.factory<_i34.GetSubcategoryUseCase>(
        () => _i34.GetSubcategoryUseCase(gh<_i28.CategoryRepo>()));
    gh.factory<_i35.CategoryCubit>(
        () => _i35.CategoryCubit(gh<_i33.GetCategoryUseCase>()));
    gh.factory<_i36.GetAllCategoryUseCase>(
        () => _i36.GetAllCategoryUseCase(gh<_i30.HomeRepo>()));
    gh.factory<_i37.HomeCubit>(
        () => _i37.HomeCubit(gh<_i36.GetAllCategoryUseCase>()));
    gh.factory<_i38.SubCategoryCubit>(
        () => _i38.SubCategoryCubit(gh<_i34.GetSubcategoryUseCase>()));
    return this;
  }
}
