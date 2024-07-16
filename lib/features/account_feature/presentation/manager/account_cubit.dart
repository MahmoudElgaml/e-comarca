import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/core/cache/storage_token.dart';
import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'account_state.dart';
@injectable
class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountInitial());
  isLogged()async{
    bool isLogged=await getIt<StorageToken>().getToken()!=null;
   if(isLogged){
     emit(AccountIsLoggedState(isLogged));
   }
   else{
     emit(AccountNotLoggedState());
   }

  }

}
