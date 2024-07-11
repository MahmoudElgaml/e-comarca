import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/config/themeing/light_theme.dart';
import 'package:e_comarce_clean/core/cache/storage_token.dart';
import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/api/api_manger.dart';
import 'core/utils/bloc_observer.dart';
import 'features/auth/data/data_sources/remote_data_source/remote_datasource_impl.dart';
import 'features/auth/data/repositories/auth_repo_impl.dart';
import 'features/auth/domain/use_cases/log_in_usecase.dart';
import 'features/auth/domain/use_cases/sign_up_usecase.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  configureDependencies();
  Bloc.observer = MyBlocObserver();
  runApp(
    DevicePreview(enabled: true, builder: (context) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(
          SignUpUseCase(
            AuthRepoImpl(
              AuthRemoteDataSourceImpl(
                  APiManger(
                    Dio(),
                  ),
                  StorageToken()),
            ),
          ),
          LogInUseCase(
            AuthRepoImpl(
              AuthRemoteDataSourceImpl(
                  APiManger(
                    Dio(),
                  ),
                  StorageToken()),
            ),
          )),
      child: MaterialApp.router(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: MyLightTheme.myLightTheme,
        title: 'Flutter Demo',
        routerConfig: AppRoute.router,
      ),
    );
  }
}
