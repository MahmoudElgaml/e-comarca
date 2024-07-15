import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/erorr/failure.dart';
import '../entities/ProductEntity.dart';
import '../repositories/product_repo.dart';

@injectable
class GetAllProductUseCase {
  ProductRepo productRepo;

  GetAllProductUseCase(this.productRepo);

  Future<Either<Failure, ProductEntity>> call(String categoryId) async{
    return await productRepo.getAllProduct(categoryId);
  }
}
