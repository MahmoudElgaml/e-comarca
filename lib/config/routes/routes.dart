import 'package:e_comarce_clean/features/auth/presentation/pages/login_screen.dart';
import 'package:e_comarce_clean/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:e_comarce_clean/features/auth/presentation/pages/test.dart';
import 'package:e_comarce_clean/features/home/presentation/pages/home_feature_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String loginScreen = "/login";
  static const String signUPScreen = "/sign";
  static const String homeScreen = "/";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: signUPScreen,
        builder: (context, state) => const SignUpScreen(),
      ),GoRoute(
        path: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}