import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/models/request/SignUserModel.dart';

import '../../models/response/UserModel.dart';

abstract class AuthRemoteDataSource{
 Future<Either<Failure,UserModel>> signUp(SignUserModel signUserModel);
 Future<Either<Failure,UserModel>> logIn({required String email, required String password});
}