import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/home/data/data_sources/remote/remote_data_source.dart';
import 'package:e_comarce_clean/features/home/data/models/CategoryModel.dart';
import 'package:e_comarce_clean/features/home/domain/entities/category_entity.dart';
import 'package:e_comarce_clean/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: HomeRepo)
class HomeReboImpl implements HomeRepo{
  HomeRemoteDataSource homeRemoteDataSource;

  HomeReboImpl(this.homeRemoteDataSource);

  @override
  Future<Either<Failure, CategoryEntity>> getAllCategory()async {
   return await homeRemoteDataSource.getAllCategory();
  }

}

