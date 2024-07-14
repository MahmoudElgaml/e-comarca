import 'package:dartz/dartz.dart';

import '../../../../core/erorr/failure.dart';
import '../entities/ProductEntity.dart';

abstract class ProductRepo{

  Future<Either<Failure,ProductEntity>> getAllProduct(String categoryId);


}