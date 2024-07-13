import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/category_feature/data/data_sources/remote/category_remote_data_source.dart';
import 'package:e_comarce_clean/features/category_feature/domain/entities/SubCategoryEntity.dart';
import 'package:e_comarce_clean/features/category_feature/domain/entities/category2_entiny.dart';
import 'package:e_comarce_clean/features/category_feature/domain/repositories/category_repo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:  CategoryRepo)
class CategoryRepoImpl implements CategoryRepo{
  CategoryRemoteDataSource categoryRemoteDataSource;

  CategoryRepoImpl(this.categoryRemoteDataSource);

  @override
  Future<Either<Failure, Category2Entity>> getCategory()async {
    return await categoryRemoteDataSource.getAllCategory();

  }

  @override
  Future<Either<Failure, SubCategoryEntity>> getSubCategory(String categoryId) async{
 return await categoryRemoteDataSource.getSubCategory(categoryId);
  }

}