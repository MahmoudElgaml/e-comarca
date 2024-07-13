import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/features/category_feature/data/models/Category2Model.dart';
import 'package:e_comarce_clean/features/category_feature/data/models/SubCategoryModel.dart';
import 'package:e_comarce_clean/features/home/data/models/CategoryModel.dart';

import '../../../../../core/erorr/failure.dart';


abstract class CategoryRemoteDataSource{
  Future<Either<Failure,Category2Model>> getAllCategory();
  Future <Either<Failure,SubCategoryModel>> getSubCategory(String categoryId);


}