import 'package:e_comarce_clean/core/services/global_connection_service/cubit/global_connection_cubit.dart';
import 'package:e_comarce_clean/core/services/snack_bar_services.dart';
import 'package:e_comarce_clean/features/home_layout/presentation/manager/home_layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/bottom_navi_bar.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<GlobalConnectionCubit, GlobalConnectionState>(
        listener: (context, state) {
          if (state is Disconnected) {
            SnackBarServices.showNoInternetMessage(
                context, "There is no Connection");
          }
        },
        child: Scaffold(
            backgroundColor: Colors.white,
            body: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: state.viewTap,
                );
              },
            ),
            bottomNavigationBar: const BottomNaviBar()),
      ),
    );
  }
}
