import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/features/home/data/models/CategoryModel.dart';

import '../../../../../core/erorr/failure.dart';
import '../../../domain/entities/category_entity.dart';

abstract class HomeRemoteDataSource{
  Future<Either<Failure,CategoryModel>> getAllCategory();


}