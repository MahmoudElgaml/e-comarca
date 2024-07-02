import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/features/home/presentation/pages/home_feature_screen.dart';
import 'package:e_comarce_clean/features/home/presentation/pages/wichlist_view.dart';
import 'package:e_comarce_clean/features/home_layout/presentation/manager/home_layout_cubit.dart';
import 'package:e_comarce_clean/features/home_layout/presentation/widgets/bottomnavi_item.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../home/presentation/widgets/costume_appbar.dart';
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
      child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(top: 6, left: 16, right: 16),
                child: state.viewTap,
              );
            },
          ),
          bottomNavigationBar: const BottomNaviBar()),
    );
  }
}
