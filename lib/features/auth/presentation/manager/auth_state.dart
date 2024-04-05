part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}
class AuthSuccessState extends AuthState {

 final  UserEntity userEntity;

  AuthSuccessState(this.userEntity);

}
class AuthFailState extends AuthState {
 final String errorMessage;

 AuthFailState(this.errorMessage);
}
class AuthLoadingState extends AuthState {}


