import 'package:dartz/dartz.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/domain/entities/UserEntity.dart';
import 'package:e_comarce_clean/features/auth/domain/repositories/auth_rebo.dart';

class LogInUseCase{
  AuthRepo authRepo;

  LogInUseCase(this.authRepo);


  Future<Either<Failure,UserEntity>> call({required String email,required String password})async{
   return  await authRepo.logIn(email: email, password: password);

  }

}