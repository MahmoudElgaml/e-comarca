import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:e_comarce_clean/config/routes/routes.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/api/api_manger.dart';
import 'core/utils/bloc_observer.dart';
import 'features/auth/data/data_sources/remote_data_source/remote_datasource_impl.dart';
import 'features/auth/data/repositories/auth_repo_impl.dart';
import 'features/auth/domain/use_cases/log_in_usecase.dart';
import 'features/auth/domain/use_cases/sign_up_usecase.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => AuthCubit(
              SignUpUseCase(
                AuthRepoImpl(
                  AuthRemoteDataSourceImpl(
                    APiManger(
                      Dio(),
                    ),
                  ),
                ),
              ),
              LogInUseCase(
                AuthRepoImpl(
                  AuthRemoteDataSourceImpl(
                    APiManger(
                      Dio(),
                    ),
                  ),
                ),
              )),
          child: MaterialApp.router(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            routerConfig: AppRoute.router,
          ),
        );
      },
    );
  }
}
