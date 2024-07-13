import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/category_feature/domain/entities/category2_entiny.dart';

import '../entities/SubCategoryEntity.dart';

abstract class CategoryRepo{
Future<Either<Failure,Category2Entity>> getCategory();
Future <Either<Failure,SubCategoryEntity>> getSubCategory(String categoryId);

}