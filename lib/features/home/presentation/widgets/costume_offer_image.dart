import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_images.dart';

class CostumeOfferImage extends StatelessWidget {
  const CostumeOfferImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      fit: BoxFit.fill,
      AppImages.offerPhoto,
      height: 200.h,
      width: 398.w,
    );
  }
}