import 'package:e_comarce_clean/features/home/presentation/pages/home_feature_screen.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/costume_appbar.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
       body: Padding(
         padding: EdgeInsets.only(top: 6,left: 16,right: 16),
         child: HomeScreen(),
       ),

      ),
    );
  }
}
