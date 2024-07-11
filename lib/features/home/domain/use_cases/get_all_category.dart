import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/home/domain/entities/category_entity.dart';
import 'package:e_comarce_clean/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class GetAllCategoryUseCase{
  HomeRepo homeRepo;

  GetAllCategoryUseCase(this.homeRepo);

 Future<Either<Failure,CategoryEntity>> call()async{
  return await homeRepo.getAllCategory();
  }
}