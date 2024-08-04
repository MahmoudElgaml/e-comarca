import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoveButton extends StatefulWidget {
  const LoveButton({
    super.key,
  });

  @override
  State<LoveButton> createState() => _LoveButtonState();
}

class _LoveButtonState extends State<LoveButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(

          width: 30,
          height: 30,
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: OvalBorder(),
            shadows: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 10,
                offset: Offset(0, 5),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: SvgPicture.asset(
              isSelected
                  ? Assets.imagesSelectedLoveIcon
                  : Assets.imagesUnselectedLobeButton,
            ),
          ),
        ),
      ),
    );
  }
}
