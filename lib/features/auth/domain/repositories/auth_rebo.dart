import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';


import '../entities/UserEntity.dart';

abstract class AuthRepo{
   Future<Either<Failure,UserEntity>> signUP(SignUserModel signUserModel);


}