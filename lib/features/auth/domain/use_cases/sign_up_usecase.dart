import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';

import 'package:e_comarce_clean/features/auth/domain/repositories/auth_rebo.dart';

import '../entities/UserEntity.dart';

class SignUpUseCase{
 AuthRepo authRepo;

 SignUpUseCase(this.authRepo);

 Future<Either<Failure,UserEntity>> call(SignUserModel signUserModel){
  return authRepo.signUP(signUserModel);

  }

}