import 'package:e_comarce_clean/features/auth/presentation/pages/login_screen.dart';
import 'package:e_comarce_clean/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:e_comarce_clean/features/auth/presentation/pages/test.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String loginScreen = "/";
  static const String signUPScreen = "/sign";
  static const String testScreen = "/test";

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
        path: testScreen,
        builder: (context, state) => const TestScteen(),
      ),
    ],
  );
}
