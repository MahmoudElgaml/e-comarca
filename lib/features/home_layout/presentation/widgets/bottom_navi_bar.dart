import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../generated/assets.dart';
import '../manager/home_layout_cubit.dart';
import 'bottomnavi_item.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15), topLeft: Radius.circular(15)),
      child: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          HomeLayoutCubit.get(context).viewTap(selectedIndex);
          setState(() {});
        },
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
    );
  }
}
