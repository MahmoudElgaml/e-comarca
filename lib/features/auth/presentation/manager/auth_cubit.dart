import 'package:bloc/bloc.dart';
import 'package:e_comarce_clean/features/auth/data/models/SignUserModel.dart';
import 'package:e_comarce_clean/features/auth/domain/entities/UserEntity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/use_cases/sign_up_usecase.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  SignUpUseCase signUpUseCase;

  AuthCubit(this.signUpUseCase) : super(AuthInitial());

  static AuthCubit get(context)=>BlocProvider.of(context);

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
}
