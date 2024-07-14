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
    as _i5;
import '../../features/category_feature/data/data_sources/remote/category_remote_data_source.dart'
    as _i4;
import '../../features/category_feature/data/repositories/category_repo_impl.dart'
    as _i9;
import '../../features/category_feature/domain/repositories/category_repo.dart'
    as _i8;
import '../../features/category_feature/domain/use_cases/get_category_usecase.dart'
    as _i12;
import '../../features/category_feature/domain/use_cases/get_subcategory_usecase.dart'
    as _i13;
import '../../features/category_feature/presentation/manager/category_cubit.dart'
    as _i14;
import '../../features/category_feature/presentation/manager/sub_category_cubit.dart'
    as _i17;
import '../../features/home/data/data_sources/remote/remote_data_source.dart'
    as _i6;
import '../../features/home/data/data_sources/remote/remote_data_source_impl.dart'
    as _i7;
import '../../features/home/data/repositories/home_rebo_impl.dart' as _i11;
import '../../features/home/domain/repositories/home_repo.dart' as _i10;
import '../../features/home/domain/use_cases/get_all_category.dart' as _i15;
import '../../features/home/presentation/manager/home_cubit.dart' as _i16;
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
    gh.factory<_i4.CategoryRemoteDataSource>(
        () => _i5.CategoryRemoteDataSourceImp(gh<_i3.APiManger>()));
    gh.factory<_i6.HomeRemoteDataSource>(
        () => _i7.HomeRemoteDataSourceImpl(gh<_i3.APiManger>()));
    gh.factory<_i8.CategoryRepo>(
        () => _i9.CategoryRepoImpl(gh<_i4.CategoryRemoteDataSource>()));
    gh.factory<_i10.HomeRepo>(
        () => _i11.HomeReboImpl(gh<_i6.HomeRemoteDataSource>()));
    gh.factory<_i12.GetCategoryUseCase>(
        () => _i12.GetCategoryUseCase(gh<_i8.CategoryRepo>()));
    gh.factory<_i13.GetSubcategoryUseCase>(
        () => _i13.GetSubcategoryUseCase(gh<_i8.CategoryRepo>()));
    gh.factory<_i14.CategoryCubit>(
        () => _i14.CategoryCubit(gh<_i12.GetCategoryUseCase>()));
    gh.factory<_i15.GetAllCategoryUseCase>(
        () => _i15.GetAllCategoryUseCase(gh<_i10.HomeRepo>()));
    gh.factory<_i16.HomeCubit>(
        () => _i16.HomeCubit(gh<_i15.GetAllCategoryUseCase>()));
    gh.factory<_i17.SubCategoryCubit>(
        () => _i17.SubCategoryCubit(gh<_i13.GetSubcategoryUseCase>()));
    return this;
  }
}
