import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/erorr/failure.dart';
import '../../domain/entities/ProductEntity.dart';
import '../../domain/repositories/product_repo.dart';
import '../data_sources/product_data_source.dart';
@Injectable(as:  ProductRepo)
class AllProductRepoImpl extends ProductRepo{

  ProductRemoteDatasource allProductRemoteDatasource;

  AllProductRepoImpl(this.allProductRemoteDatasource);

  @override
  Future<Either<Failure, ProductEntity>> getAllProduct(String categoryId) {
    return allProductRemoteDatasource.getAllProduct(categoryId);
  }

}