import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/costume_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            top: 112.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CostumeOfferImage(),
              Text(
                AppString.category,
                style: AppStyle.style18,
              ),
              SizedBox(
                height: 300.h,
                width: 412.w,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                        ),
                    itemBuilder: (context, index) => CostumeCategory(),itemCount: 20,),
              )

            ],
          ),
        ),
      ),
    );
  }
}

class CostumeOfferImage extends StatelessWidget {
  const CostumeOfferImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        fit: BoxFit.fill,
        AppImages.offerPhoto,
        height: 200.h,
        width: 398.w,
      ),
    );
  }
}
