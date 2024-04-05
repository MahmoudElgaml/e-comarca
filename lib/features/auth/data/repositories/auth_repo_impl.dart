import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/data_sources/remote_data_source/remote_data_source.dart';
import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';

import 'package:e_comarce_clean/features/auth/domain/repositories/auth_rebo.dart';

import '../../domain/entities/UserEntity.dart';

class AuthRepoImpl implements AuthRepo{
  AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImpl(this.authRemoteDataSource);

  @override
  Future<Either<Failure, UserEntity>> signUP(SignUserModel signUserModel) {
    return authRemoteDataSource.signUp(signUserModel);

  }


}