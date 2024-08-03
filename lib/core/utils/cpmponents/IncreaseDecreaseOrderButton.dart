import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../app_style.dart';

class IncreaseDecreaseOrderButton extends StatelessWidget {
  const IncreaseDecreaseOrderButton({super.key, this.quantity});
 final num? quantity;
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 122,
      height: 42,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
      decoration: ShapeDecoration(
        color: const Color(0xFF004182),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: AlignmentDirectional.center,
        child: Row(
          children: [
            InkWell(child: Image.asset(Assets.imagesDecreaseIocn)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Text(
                quantity.toString(),
                style: AppStyle.style18(context).copyWith(color: Colors.white),
              ),
            ),
            InkWell(child: SvgPicture.asset(Assets.imagesIncreaseIcon)),
          ],
        ),
      ),
    );
  }
}
