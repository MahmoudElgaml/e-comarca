// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/data/data_sources/remote_data_source/remote_data_source.dart'
    as _i4;
import '../../features/auth/data/data_sources/remote_data_source/remote_datasource_impl.dart'
    as _i5;
import '../../features/auth/data/repositories/auth_repo_impl.dart' as _i17;
import '../../features/auth/domain/repositories/auth_rebo.dart' as _i16;
import '../../features/auth/domain/use_cases/log_in_usecase.dart' as _i18;
import '../../features/auth/domain/use_cases/sign_up_usecase.dart' as _i19;
import '../../features/auth/presentation/manager/auth_cubit.dart' as _i20;
import '../../features/category_feature/data/data_sources/remote/category_data_source_impl.dart'
    as _i12;
import '../../features/category_feature/data/data_sources/remote/category_remote_data_source.dart'
    as _i11;
import '../../features/category_feature/data/repositories/category_repo_impl.dart'
    as _i22;
import '../../features/category_feature/domain/repositories/category_repo.dart'
    as _i21;
import '../../features/category_feature/domain/use_cases/get_category_usecase.dart'
    as _i26;
import '../../features/category_feature/domain/use_cases/get_subcategory_usecase.dart'
    as _i27;
import '../../features/category_feature/presentation/manager/category_cubit.dart'
    as _i28;
import '../../features/category_feature/presentation/manager/sub_category_cubit.dart'
    as _i31;
import '../../features/home/data/data_sources/remote/remote_data_source.dart'
    as _i14;
import '../../features/home/data/data_sources/remote/remote_data_source_impl.dart'
    as _i15;
import '../../features/home/data/repositories/home_rebo_impl.dart' as _i24;
import '../../features/home/domain/repositories/home_repo.dart' as _i23;
import '../../features/home/domain/use_cases/get_all_category.dart' as _i29;
import '../../features/home/presentation/manager/home_cubit.dart' as _i30;
import '../../features/products_feature/data/data_sources/product_data_source.dart'
    as _i7;
import '../../features/products_feature/data/data_sources/product_remote_datasource_impl.dart'
    as _i8;
import '../../features/products_feature/data/repositories/product_repo_impl.dart'
    as _i10;
import '../../features/products_feature/domain/repositories/product_repo.dart'
    as _i9;
import '../../features/products_feature/domain/use_cases/get_product_use_case.dart'
    as _i13;
import '../../features/products_feature/presentation/manager/get_product_cubit.dart'
    as _i25;
import '../api/api_manger.dart' as _i3;
import '../cache/storage_token.dart' as _i6;

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
    gh.singleton<_i3.APiManger>(() => _i3.APiManger());
    gh.factory<_i4.AuthRemoteDataSource>(() => _i5.AuthRemoteDataSourceImpl(
          gh<_i3.APiManger>(),
          gh<_i6.StorageToken>(),
        ));
    gh.factory<_i7.ProductRemoteDatasource>(
        () => _i8.AllProductRemoteDatasourceImpl(gh<_i3.APiManger>()));
    gh.factory<_i9.ProductRepo>(
        () => _i10.AllProductRepoImpl(gh<_i7.ProductRemoteDatasource>()));
    gh.factory<_i11.CategoryRemoteDataSource>(
        () => _i12.CategoryRemoteDataSourceImp(gh<_i3.APiManger>()));
    gh.factory<_i13.GetAllProductUseCase>(
        () => _i13.GetAllProductUseCase(gh<_i9.ProductRepo>()));
    gh.factory<_i14.HomeRemoteDataSource>(
        () => _i15.HomeRemoteDataSourceImpl(gh<_i3.APiManger>()));
    gh.factory<_i16.AuthRepo>(
        () => _i17.AuthRepoImpl(gh<_i4.AuthRemoteDataSource>()));
    gh.factory<_i18.LogInUseCase>(() => _i18.LogInUseCase(gh<_i16.AuthRepo>()));
    gh.factory<_i19.SignUpUseCase>(
        () => _i19.SignUpUseCase(gh<_i16.AuthRepo>()));
    gh.factory<_i20.AuthCubit>(() => _i20.AuthCubit(
          gh<_i19.SignUpUseCase>(),
          gh<_i18.LogInUseCase>(),
        ));
    gh.factory<_i21.CategoryRepo>(
        () => _i22.CategoryRepoImpl(gh<_i11.CategoryRemoteDataSource>()));
    gh.factory<_i23.HomeRepo>(
        () => _i24.HomeReboImpl(gh<_i14.HomeRemoteDataSource>()));
    gh.factory<_i25.GetProductCubit>(
        () => _i25.GetProductCubit(gh<_i13.GetAllProductUseCase>()));
    gh.factory<_i26.GetCategoryUseCase>(
        () => _i26.GetCategoryUseCase(gh<_i21.CategoryRepo>()));
    gh.factory<_i27.GetSubcategoryUseCase>(
        () => _i27.GetSubcategoryUseCase(gh<_i21.CategoryRepo>()));
    gh.factory<_i28.CategoryCubit>(
        () => _i28.CategoryCubit(gh<_i26.GetCategoryUseCase>()));
    gh.factory<_i29.GetAllCategoryUseCase>(
        () => _i29.GetAllCategoryUseCase(gh<_i23.HomeRepo>()));
    gh.factory<_i30.HomeCubit>(
        () => _i30.HomeCubit(gh<_i29.GetAllCategoryUseCase>()));
    gh.factory<_i31.SubCategoryCubit>(
        () => _i31.SubCategoryCubit(gh<_i27.GetSubcategoryUseCase>()));
    return this;
  }
}
