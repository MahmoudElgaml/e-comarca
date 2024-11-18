import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/models/request/SignUserModel.dart';


import '../entities/UserEntity.dart';

abstract class AuthRepo{
   Future<Either<Failure,UserEntity>> signUP(SignUserModel signUserModel);
   Future<Either<Failure,UserEntity>> logIn({required String email, required String password});


}