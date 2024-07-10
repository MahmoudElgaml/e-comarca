import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';
import 'package:e_comarce_clean/features/auth/domain/entities/UserEntity.dart';
import 'package:e_comarce_clean/features/auth/domain/use_cases/log_in_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/use_cases/sign_up_usecase.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  SignUpUseCase signUpUseCase;
  LogInUseCase logInUseCase;

  AuthCubit(this.signUpUseCase, this.logInUseCase) : super(AuthInitial());

  static AuthCubit get(context) => BlocProvider.of(context);

  signUp(SignUserModel signUserModel) async {
    emit(AuthLoadingState());
    var result = await signUpUseCase.call(signUserModel);
    result.fold(
      (fail) => emit(AuthFailState(fail.message)),
      (signeddUser) => emit(
        AuthSuccessState(signeddUser),
      ),
    );
  }

  logIn({required String email, required String password}) async {
    emit(AuthLoadingState());
    var result = await logInUseCase.call(email: email, password: password);
    result.fold(
      (fail) => emit(AuthFailState(fail.message)),
      (signeddUser) => emit(
        AuthSuccessState(signeddUser),
      ),
    );
  }
}
