import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/api_manger.dart';
import 'package:e_comarce_clean/core/api/end_points.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/data_sources/remote_data_source/remote_data_source.dart';
import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';
import 'package:e_comarce_clean/features/auth/data/models/UserModel.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource{
  APiManger aPiManger;

  AuthRemoteDataSourceImpl(this.aPiManger);

  @override
  Future<Either<Failure, UserModel>> signUp(SignUserModel signUserModel) async{
    try {
      var user = await aPiManger.post(EndPoints.signUp, signUserModel.toJson());
      UserModel userModel = UserModel.fromJson(user.data);
      return right(userModel);
    }
    catch(e){
      if(e is DioException){
        return left(ServerFailure.fromServer(e));
      }
      else{
        return left(ServerFailure(e.toString()));
      }


    }
  }


}