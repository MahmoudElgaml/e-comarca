import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:e_comarce_clean/features/auth/presentation/pages/login_screen.dart';
import 'package:e_comarce_clean/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:e_comarce_clean/features/auth/presentation/pages/test.dart';
import 'package:e_comarce_clean/features/cart_feature/presentation/pages/cart_screen.dart';
import 'package:e_comarce_clean/features/home/presentation/pages/home_feature_screen.dart';
import 'package:e_comarce_clean/features/home_layout/presentation/manager/home_layout_cubit.dart';
import 'package:e_comarce_clean/features/home_layout/presentation/pages/home_layout.dart';
import 'package:e_comarce_clean/features/product_detail_feature/presentation/pages/product_detail_screen.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/manager/get_product_cubit.dart';
import 'package:e_comarce_clean/features/products_feature/presentation/pages/products_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String loginScreen = "/login";
  static const String signUPScreen = "/sign";
  static const String homeLayoutScreen = "/";
  static const String cartScreen = "/cart";
  static const String productsScreen = "/product";
  static const String productsDetailScreen = "/detailedProduct";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: signUPScreen,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: homeLayoutScreen,
        builder: (context, state) => BlocProvider(
            create: (context) => HomeLayoutCubit(), child: const HomeLayout()),
      ),
      GoRoute(
        path: cartScreen,
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: productsScreen,
        builder: (context, state) =>  BlocProvider(
            create: (context) => getIt<GetProductCubit>(), child: const ProductsScreen()),
      ),
      GoRoute(
        path: productsDetailScreen,
        builder: (context, state) => const ProductDetailScreen(),
      ),
    ],
  );
}
