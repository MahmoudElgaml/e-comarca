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
import '../../features/auth/data/repositories/auth_repo_impl.dart' as _i18;
import '../../features/auth/domain/repositories/auth_rebo.dart' as _i17;
import '../../features/auth/domain/use_cases/log_in_usecase.dart' as _i19;
import '../../features/auth/domain/use_cases/sign_up_usecase.dart' as _i20;
import '../../features/auth/presentation/manager/auth_cubit.dart' as _i21;
import '../../features/category_feature/data/data_sources/remote/category_data_source_impl.dart'
    as _i13;
import '../../features/category_feature/data/data_sources/remote/category_remote_data_source.dart'
    as _i12;
import '../../features/category_feature/data/repositories/category_repo_impl.dart'
    as _i23;
import '../../features/category_feature/domain/repositories/category_repo.dart'
    as _i22;
import '../../features/category_feature/domain/use_cases/get_category_usecase.dart'
    as _i27;
import '../../features/category_feature/domain/use_cases/get_subcategory_usecase.dart'
    as _i28;
import '../../features/category_feature/presentation/manager/category_cubit.dart'
    as _i29;
import '../../features/category_feature/presentation/manager/sub_category_cubit.dart'
    as _i32;
import '../../features/home/data/data_sources/remote/remote_data_source.dart'
    as _i15;
import '../../features/home/data/data_sources/remote/remote_data_source_impl.dart'
    as _i16;
import '../../features/home/data/repositories/home_rebo_impl.dart' as _i25;
import '../../features/home/domain/repositories/home_repo.dart' as _i24;
import '../../features/home/domain/use_cases/get_all_category.dart' as _i30;
import '../../features/home/presentation/manager/home_cubit.dart' as _i31;
import '../../features/products_feature/data/data_sources/product_data_source.dart'
    as _i8;
import '../../features/products_feature/data/data_sources/product_remote_datasource_impl.dart'
    as _i9;
import '../../features/products_feature/data/repositories/product_repo_impl.dart'
    as _i11;
import '../../features/products_feature/domain/repositories/product_repo.dart'
    as _i10;
import '../../features/products_feature/domain/use_cases/get_product_use_case.dart'
    as _i14;
import '../../features/products_feature/presentation/manager/get_product_cubit.dart'
    as _i26;
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
    gh.factory<_i8.ProductRemoteDatasource>(
        () => _i9.AllProductRemoteDatasourceImpl(gh<_i4.APiManger>()));
    gh.factory<_i10.ProductRepo>(
        () => _i11.AllProductRepoImpl(gh<_i8.ProductRemoteDatasource>()));
    gh.factory<_i12.CategoryRemoteDataSource>(
        () => _i13.CategoryRemoteDataSourceImp(gh<_i4.APiManger>()));
    gh.factory<_i14.GetAllProductUseCase>(
        () => _i14.GetAllProductUseCase(gh<_i10.ProductRepo>()));
    gh.factory<_i15.HomeRemoteDataSource>(
        () => _i16.HomeRemoteDataSourceImpl(gh<_i4.APiManger>()));
    gh.factory<_i17.AuthRepo>(
        () => _i18.AuthRepoImpl(gh<_i6.AuthRemoteDataSource>()));
    gh.factory<_i19.LogInUseCase>(() => _i19.LogInUseCase(gh<_i17.AuthRepo>()));
    gh.factory<_i20.SignUpUseCase>(
        () => _i20.SignUpUseCase(gh<_i17.AuthRepo>()));
    gh.factory<_i21.AuthCubit>(() => _i21.AuthCubit(
          gh<_i20.SignUpUseCase>(),
          gh<_i19.LogInUseCase>(),
        ));
    gh.factory<_i22.CategoryRepo>(
        () => _i23.CategoryRepoImpl(gh<_i12.CategoryRemoteDataSource>()));
    gh.factory<_i24.HomeRepo>(
        () => _i25.HomeReboImpl(gh<_i15.HomeRemoteDataSource>()));
    gh.factory<_i26.GetProductCubit>(
        () => _i26.GetProductCubit(gh<_i14.GetAllProductUseCase>()));
    gh.factory<_i27.GetCategoryUseCase>(
        () => _i27.GetCategoryUseCase(gh<_i22.CategoryRepo>()));
    gh.factory<_i28.GetSubcategoryUseCase>(
        () => _i28.GetSubcategoryUseCase(gh<_i22.CategoryRepo>()));
    gh.factory<_i29.CategoryCubit>(
        () => _i29.CategoryCubit(gh<_i27.GetCategoryUseCase>()));
    gh.factory<_i30.GetAllCategoryUseCase>(
        () => _i30.GetAllCategoryUseCase(gh<_i24.HomeRepo>()));
    gh.factory<_i31.HomeCubit>(
        () => _i31.HomeCubit(gh<_i30.GetAllCategoryUseCase>()));
    gh.factory<_i32.SubCategoryCubit>(
        () => _i32.SubCategoryCubit(gh<_i28.GetSubcategoryUseCase>()));
    return this;
  }
}
