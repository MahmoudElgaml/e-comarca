part of 'account_cubit.dart';

@immutable
abstract class AccountState {}

class AccountInitial extends AccountState {}
class AccountNotLoggedState extends AccountState {}
class AccountIsLoggedState extends AccountState {
 final  bool isLogged;

  AccountIsLoggedState(this.isLogged);
}
