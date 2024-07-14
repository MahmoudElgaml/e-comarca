import 'package:dartz/dartz.dart';

import '../../../../../core/erorr/failure.dart';
import '../models/ProductModel.dart';

abstract class ProductRemoteDatasource{
  Future<Either<Failure,ProductModel>> getAllProduct(String categoryId);

}