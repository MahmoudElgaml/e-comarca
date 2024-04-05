import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';

import '../../models/UserModel.dart';

abstract class AuthRemoteDataSource{
 Future<Either<Failure,UserModel>> signUp(SignUserModel signUserModel);
}