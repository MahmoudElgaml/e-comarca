import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/data_sources/remote_data_source/remote_data_source.dart';
import 'package:e_comarce_clean/features/auth/data/models/request/SignUserModel.dart';

import 'package:e_comarce_clean/features/auth/domain/repositories/auth_rebo.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/UserEntity.dart';
@Injectable(as:AuthRepo)
class AuthRepoImpl implements AuthRepo{
  AuthRemoteDataSource authRemoteDataSource;

  AuthRepoImpl(this.authRemoteDataSource);

  @override
  Future<Either<Failure, UserEntity>> signUP(SignUserModel signUserModel) {

    return authRemoteDataSource.signUp(signUserModel);

  }

  @override
  Future<Either<Failure, UserEntity>> logIn({required String email, required String password}) async{
    return await authRemoteDataSource.logIn(email: email, password: password);
  }


}