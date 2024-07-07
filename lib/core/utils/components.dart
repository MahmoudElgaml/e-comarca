import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import 'app_style.dart';

class IncreaseDecreaseOrder extends StatelessWidget {
  const IncreaseDecreaseOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
      decoration: ShapeDecoration(
        color: const Color(0xFF004182),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        children: [
          Image.asset(Assets.imagesDecreaseIocn),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Text(
              "1",
              style: AppStyle.style18(context).copyWith(color: Colors.white),
            ),
          ),
          SvgPicture.asset(Assets.imagesIncreaseIcon),
        ],
      ),
    );
  }
}
