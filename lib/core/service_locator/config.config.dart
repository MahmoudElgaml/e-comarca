// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/category_feature/data/data_sources/remote/category_data_source_impl.dart'
    as _i9;
import '../../features/category_feature/data/data_sources/remote/category_remote_data_source.dart'
    as _i8;
import '../../features/category_feature/data/repositories/category_repo_impl.dart'
    as _i14;
import '../../features/category_feature/domain/repositories/category_repo.dart'
    as _i13;
import '../../features/category_feature/domain/use_cases/get_category_usecase.dart'
    as _i18;
import '../../features/category_feature/domain/use_cases/get_subcategory_usecase.dart'
    as _i19;
import '../../features/category_feature/presentation/manager/category_cubit.dart'
    as _i20;
import '../../features/category_feature/presentation/manager/sub_category_cubit.dart'
    as _i23;
import '../../features/home/data/data_sources/remote/remote_data_source.dart'
    as _i11;
import '../../features/home/data/data_sources/remote/remote_data_source_impl.dart'
    as _i12;
import '../../features/home/data/repositories/home_rebo_impl.dart' as _i16;
import '../../features/home/domain/repositories/home_repo.dart' as _i15;
import '../../features/home/domain/use_cases/get_all_category.dart' as _i21;
import '../../features/home/presentation/manager/home_cubit.dart' as _i22;
import '../../features/products_feature/data/data_sources/product_data_source.dart'
    as _i4;
import '../../features/products_feature/data/data_sources/product_remote_datasource_impl.dart'
    as _i5;
import '../../features/products_feature/data/repositories/product_repo_impl.dart'
    as _i7;
import '../../features/products_feature/domain/repositories/product_repo.dart'
    as _i6;
import '../../features/products_feature/domain/use_cases/get_product_use_case.dart'
    as _i10;
import '../../features/products_feature/presentation/manager/get_product_cubit.dart'
    as _i17;
import '../api/api_manger.dart' as _i3;

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
    gh.factory<_i4.ProductRemoteDatasource>(
        () => _i5.AllProductRemoteDatasourceImpl(gh<_i3.APiManger>()));
    gh.factory<_i6.ProductRepo>(
        () => _i7.AllProductRepoImpl(gh<_i4.ProductRemoteDatasource>()));
    gh.factory<_i8.CategoryRemoteDataSource>(
        () => _i9.CategoryRemoteDataSourceImp(gh<_i3.APiManger>()));
    gh.factory<_i10.GetAllProductUseCase>(
        () => _i10.GetAllProductUseCase(gh<_i6.ProductRepo>()));
    gh.factory<_i11.HomeRemoteDataSource>(
        () => _i12.HomeRemoteDataSourceImpl(gh<_i3.APiManger>()));
    gh.factory<_i13.CategoryRepo>(
        () => _i14.CategoryRepoImpl(gh<_i8.CategoryRemoteDataSource>()));
    gh.factory<_i15.HomeRepo>(
        () => _i16.HomeReboImpl(gh<_i11.HomeRemoteDataSource>()));
    gh.factory<_i17.GetProductCubit>(
        () => _i17.GetProductCubit(gh<_i10.GetAllProductUseCase>()));
    gh.factory<_i18.GetCategoryUseCase>(
        () => _i18.GetCategoryUseCase(gh<_i13.CategoryRepo>()));
    gh.factory<_i19.GetSubcategoryUseCase>(
        () => _i19.GetSubcategoryUseCase(gh<_i13.CategoryRepo>()));
    gh.factory<_i20.CategoryCubit>(
        () => _i20.CategoryCubit(gh<_i18.GetCategoryUseCase>()));
    gh.factory<_i21.GetAllCategoryUseCase>(
        () => _i21.GetAllCategoryUseCase(gh<_i15.HomeRepo>()));
    gh.factory<_i22.HomeCubit>(
        () => _i22.HomeCubit(gh<_i21.GetAllCategoryUseCase>()));
    gh.factory<_i23.SubCategoryCubit>(
        () => _i23.SubCategoryCubit(gh<_i19.GetSubcategoryUseCase>()));
    return this;
  }
}
