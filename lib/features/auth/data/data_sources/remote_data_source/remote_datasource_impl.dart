import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/core/api/api_manger.dart';
import 'package:e_comarce_clean/core/api/end_points.dart';
import 'package:e_comarce_clean/core/erorr/failure.dart';
import 'package:e_comarce_clean/features/auth/data/data_sources/remote_data_source/remote_data_source.dart';
import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';
import 'package:e_comarce_clean/features/auth/data/models/UserModel.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/cache/storage_token.dart';
@Injectable(as:AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  APiManger aPiManger;
  StorageToken storageToken;
  AuthRemoteDataSourceImpl(this.aPiManger,this.storageToken);

  @override
  Future<Either<Failure, UserModel>> signUp(SignUserModel signUserModel) async {
    try {
      var user = await aPiManger.post(EndPoints.signUp, signUserModel.toJson());
      UserModel userModel = UserModel.fromJson(user.data);
      storageToken.setToken(userModel.token!);
      return right(userModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, UserModel>> logIn(
      {required String email,required String password}) async {
    try {
      var response = await aPiManger
          .post(EndPoints.logIn, {"email": email, "password": password});
      UserModel userModel = UserModel.fromJson(response.data);
      return right(userModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
