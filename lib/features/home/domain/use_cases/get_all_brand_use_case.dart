import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/erorr/failure.dart';
import '../entities/BrandEntity.dart';

@injectable
class GetAllBrandUseCase{
  HomeRepo homeRepo;

  GetAllBrandUseCase(this.homeRepo);

  Future<Either<Failure,BrandEntity>> call() async {
    return await homeRepo.getAllBrand();



  }
}