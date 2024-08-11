import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';

import 'package:e_comarce_clean/features/home/domain/entities/BrandEntity.dart';
import 'package:e_comarce_clean/features/home/domain/entities/category_entity.dart';

abstract class HomeRepo{
  Future<Either<Failure,CategoryEntity>> getAllCategory();
  Future<Either<Failure,BrandEntity>> getAllBrand();



}