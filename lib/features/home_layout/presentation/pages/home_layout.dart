import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/features/home/presentation/pages/home_feature_screen.dart';
import 'package:e_comarce_clean/features/home_layout/presentation/widgets/bottomnavi_item.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../home/presentation/widgets/costume_appbar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: const Padding(
            padding: EdgeInsets.only(top: 6, left: 16, right: 16),
            child: HomeScreen(),
          ),
          bottomNavigationBar: ClipRRect(
             borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
            child: BottomNavigationBar(
               showSelectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                    backgroundColor: AppColor.primaryColor,
                    icon: BottomNaviItem(
                      icon: Assets.imagesHomeIcon,
                    ),
                    label: "."),
                BottomNavigationBarItem(
                    icon: BottomNaviItem(
                      icon: Assets.imagesCategoryIcon,
                    ),
                    label: "."),
                BottomNavigationBarItem(
                    icon: BottomNaviItem(
                      icon: Assets.imagesWichList,
                    ),
                    label: "."),
                BottomNavigationBarItem(
                    icon: BottomNaviItem(
                      icon: Assets.imagesAccountIcon,
                    ),
                    label: "."),
              ],
            ),
          )),
    );
  }
}
