import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/category_feature/domain/entities/SubCategoryEntity.dart';
import 'package:e_comarce_clean/features/category_feature/domain/repositories/category_repo.dart';

import 'package:injectable/injectable.dart';

@injectable
class GetSubcategoryUseCase {
  CategoryRepo categoryRepo;

  GetSubcategoryUseCase(this.categoryRepo);

  Future<Either<Failure, SubCategoryEntity>> call(String categoryId) {
    return categoryRepo.getSubCategory(categoryId);
  }
}
