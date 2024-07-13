import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/category_feature/domain/entities/category2_entiny.dart';
import 'package:e_comarce_clean/features/category_feature/domain/repositories/category_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class GetCategoryUseCase{
  CategoryRepo categoryRepo;

  GetCategoryUseCase(this.categoryRepo);

 Future<Either<Failure,Category2Entity>> call()async{

   return await categoryRepo.getCategory();

  }
}