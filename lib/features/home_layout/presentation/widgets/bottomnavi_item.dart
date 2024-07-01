import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNaviItem extends StatelessWidget {
  const BottomNaviItem({super.key,required this.icon});
 final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle
      ),
      child: Center(child: SvgPicture.asset(icon)),
    );
  }
}
